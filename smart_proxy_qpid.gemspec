# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smart_proxy_qpid/version'

Gem::Specification.new do |gem|
  gem.name          = "smart_proxy_qpid"
  gem.version       = QpidProxy::VERSION
  gem.authors       = ['Eric D helms']
  gem.email         = ['ericdhelms@gmail.com']
  gem.homepage      = "https://github.com/theforeman/smart-proxy-qpid"
  gem.summary       = %q{Basic Qpid support for Foreman Smart-Proxy}
  gem.description   = <<-EOS
    Basic Qpid support for Foreman Smart-Proxy
  EOS

  gem.files         = Dir['{bundler.d,lib,settings.d}/**/*', 'LICENSE', 'Gemfile']
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.license = 'GPL-3.0'

  gem.required_ruby_version = '~> 2.5'

  # todo: add a runtime dependency on smart-proxy
  gem.add_development_dependency('test-unit', '~> 3')
  gem.add_development_dependency('mocha', '~> 1')
  gem.add_development_dependency('webmock', '~> 3')
  gem.add_development_dependency('rack-test')
  gem.add_development_dependency('rake', '~> 13')
end
