# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: corleone 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "corleone"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Huie"]
  s.date = "2014-11-21"
  s.description = "A toolkit for distributing tasks among workers"
  s.email = "dahuie@gmail.com"
  s.executables = ["corleone_rspec", "corleone_rspec_worker"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".ruby-gemset",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/corleone_rspec",
    "bin/corleone_rspec_worker",
    "corleone.gemspec",
    "lib/corleone.rb",
    "lib/corleone/collector/rspec.rb",
    "lib/corleone/emitter/rspec.rb",
    "lib/corleone/message.rb",
    "lib/corleone/pool.rb",
    "lib/corleone/registry.rb",
    "lib/corleone/rspec.rb",
    "lib/corleone/runner/rspec.rb",
    "lib/corleone/server.rb",
    "lib/corleone/worker.rb",
    "spec/spec_helper.rb",
    "test_spec/example2_spec.rb",
    "test_spec/example3_spec.rb",
    "test_spec/example_spec.rb",
    "test_spec/spec_helper.rb",
    "test_spec/spec_image/runner.sh"
  ]
  s.homepage = "http://github.com/DavidHuie/corleone"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A toolkit for distributing tasks among workers"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 2.99"])
      s.add_development_dependency(%q<byebug>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 2.99"])
      s.add_dependency(%q<byebug>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.99"])
    s.add_dependency(%q<byebug>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

