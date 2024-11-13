# Constants for commonly reused values
LIB_PATH = File.expand_path("lib", __dir__)
GITHUB_REPO = "https://github.com/khulnasoft/neophrase"

$LOAD_PATH.unshift(LIB_PATH) unless $LOAD_PATH.include?(LIB_PATH)
require 'neophrase/plugin/translate_gpt/version'

Gem::Specification.new do |spec|
  spec.name          = 'neophrase'
  spec.version       = NeoPhrase::TranslateGpt::VERSION
  spec.author        = 'Md Sulaiman'
  spec.email         = 'dev.sulaiman@icloud.com'
  spec.summary       = 'A Fastlane plugin for translating iOS app strings using OpenAI GPT.'
  spec.homepage      = GITHUB_REPO
  spec.license       = 'MIT'

  # Metadata for RubyGems
  spec.metadata["homepage_uri"] = GITHUB_REPO
  spec.metadata["source_code_uri"] = GITHUB_REPO
  spec.metadata["github_repo"] = GITHUB_REPO

  # File lists for gem packaging
  spec.files         = Dir.glob("lib/**/*") + %w[README.md LICENSE]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Ruby compatibility
  spec.required_ruby_version = '>= 2.6'

  # Runtime dependencies
  spec.add_runtime_dependency 'ruby-openai', '~> 3.7'
  spec.add_runtime_dependency 'loco_strings', '~> 0.1.4.1'

  # Development dependencies
  %w[
    bundler
    pry
    rake
    rspec
    rspec_junit_formatter
    rubocop
    rubocop-performance
    rubocop-require_tools
    simplecov
  ].each { |dep| spec.add_development_dependency(dep) }

  # Specific version requirements
  spec.add_development_dependency('neophrase', '>= 2.212.2')
  spec.add_development_dependency('rubocop', '1.12.1')
end
