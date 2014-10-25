# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: docker_test 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "docker_test"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Huie"]
  s.date = "2014-10-25"
  s.description = "A toolkit for parallelizing tests among Docker containers"
  s.email = "dahuie@gmail.com"
  s.executables = ["dt_rspec", "dt_rspec_worker"]
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
    "Vagrantfile",
    "ansible/dev.yml",
    "ansible/host_vars/dev",
    "ansible/roles/docker-registry/README.md",
    "ansible/roles/docker-registry/defaults/main.yml",
    "ansible/roles/docker-registry/handlers/main.yml",
    "ansible/roles/docker-registry/meta/main.yml",
    "ansible/roles/docker-registry/tasks/main.yml",
    "ansible/roles/docker-registry/templates/config.yml.j2",
    "ansible/roles/docker-registry/vars/main.yml",
    "ansible/roles/docker/README.md",
    "ansible/roles/docker/defaults/main.yml",
    "ansible/roles/docker/handlers/main.yml",
    "ansible/roles/docker/meta/main.yml",
    "ansible/roles/docker/tasks/main.yml",
    "ansible/roles/docker/vars/main.yml",
    "ansible/roles/vagrant/README.md",
    "ansible/roles/vagrant/defaults/main.yml",
    "ansible/roles/vagrant/files/zshrc",
    "ansible/roles/vagrant/handlers/main.yml",
    "ansible/roles/vagrant/meta/main.yml",
    "ansible/roles/vagrant/tasks/main.yml",
    "ansible/roles/vagrant/vars/main.yml",
    "bin/dt_rspec",
    "bin/dt_rspec_worker",
    "docker_test.gemspec",
    "lib/docker_test.rb",
    "lib/docker_test/collector/rspec2.rb",
    "lib/docker_test/collector/rspec3.rb",
    "lib/docker_test/config.rb",
    "lib/docker_test/docker/image.rb",
    "lib/docker_test/emitter/rspec2.rb",
    "lib/docker_test/emitter/rspec3.rb",
    "lib/docker_test/message.rb",
    "lib/docker_test/rspec.rb",
    "lib/docker_test/runner/rspec2.rb",
    "lib/docker_test/runner/rspec3.rb",
    "lib/docker_test/server.rb",
    "lib/docker_test/worker.rb",
    "spec/docker_spec.rb",
    "spec/spec_helper.rb",
    "test_spec/config.rb",
    "test_spec/example_spec.rb",
    "test_spec/spec_helper.rb",
    "test_spec/spec_image/Dockerfile",
    "test_spec/spec_image/build.sh",
    "test_spec/spec_image/docker-registry.sh",
    "test_spec/spec_image/runner.sh"
  ]
  s.homepage = "http://github.com/DavidHuie/docker_test"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A toolkit for parallelizing tests among Docker containers"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<docker-api>, [">= 0"])
      s.add_runtime_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<byebug>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<docker-api>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<byebug>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<docker-api>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<byebug>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

