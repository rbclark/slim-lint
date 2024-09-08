# frozen_string_literal: true

$LOAD_PATH << File.expand_path('lib', __dir__)
require 'slim_lint/constants'
require 'slim_lint/version'

Gem::Specification.new do |s|
  s.name             = 'slim_lint'
  s.version          = SlimLint::VERSION
  s.license          = 'MIT'
  s.summary          = 'Slim template linting tool'
  s.description      = 'Configurable tool for writing clean and consistent Slim templates'
  s.authors          = ['Shane da Silva']
  s.email            = ['shane@dasilva.io']
  s.homepage         = SlimLint::REPO_URL

  s.require_paths    = ['lib']

  s.executables      = ['slim-lint']

  s.files            = Dir['config/**.yml'] +
                       Dir['lib/**/*.rb'] +
                       ['LICENSE.md']

  s.required_ruby_version = '>= 3.0'

  s.add_runtime_dependency 'rexml', '~> 3.2'
  s.add_runtime_dependency 'rubocop', ['>= 1.0', '< 2.0']
  s.add_runtime_dependency 'slim', ['>= 3.0', '< 6.0']

  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rspec-its', '~> 1.0'
end
