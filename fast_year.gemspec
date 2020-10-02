# frozen_string_literal: true

require_relative 'lib/fast_year/version'

Gem::Specification.new do |spec|
  spec.name          = 'fast_year'
  spec.version       = FastYear::VERSION
  spec.authors       = ['Ryo Okamoto']
  spec.email         = ['ryo@aquahill.net']
  spec.licenses      = ['MIT']
  spec.extensions    = %w[ext/fast_year/extconf.rb]

  spec.summary       = 'A faster implementation of getting the current year'
  spec.description   = 'A faster implementation of getting the current local 4 digit year.'
  spec.homepage      = 'https://github.com/ryochin/fast_year'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ryochin/fast_year'
  spec.metadata['changelog_uri']   = 'https://github.com/ryochin/fast_year/ChangeLog.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'benchmark-ips'
  spec.add_development_dependency 'rake-compiler'
  spec.add_development_dependency 'rspec'
end
