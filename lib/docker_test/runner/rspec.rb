require 'rspec/core'
require 'rspec/core/formatters/json_formatter'

module DockerTest::Runner

  class RSpec < ::RSpec::Core::Runner

    def setup_message
      DockerTest::Message::Setup.new(ARGV)
    end

    def self.get_runner(args)
      options = ::RSpec::Core::ConfigurationOptions.new(args)
      runner = new(options)
      runner.setup($stderr, $stdout)
      runner
    end

    def items
      @world.ordered_example_groups
    end

    def run_each(input_queue, output_queue)
      formatter = DockerTest::Runner::RSpec::Formatter.new

      @configuration.reporter.report(0) do |reporter|
        reporter.register_listener(formatter, :example_failed)

        begin
          hook_context = ::RSpec::Core::SuiteHookContext.new
          @configuration.hooks.run(:before, :suite, hook_context)
          failures = 0

          loop do
            message = input_queue.pop
            break if message.instance_of?(DockerTest::Message::Exit)

            formatter.set_message_context(message)

            start = Time.now
            ret = message.payload.run(reporter)
            failures += 1 unless ret
            diff = Time.now - start

            message.output = ret
            message.timing = diff

            output_queue << message
          end

          @configuration.failure_exit_code if failures > 0
        ensure
          @configuration.hooks.run(:after, :suite, hook_context)
        end
      end
    end

    class Formatter

      def set_message_context(message)
        @message = message
      end

      def example_failed(notification)
        @message.metadata = {
          exception: notification.exception,
          message_lines: notification.message_lines,
          formatted_backtrace: notification.formatted_backtrace,
        }
      end

    end

  end

end
