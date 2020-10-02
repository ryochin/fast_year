# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rake/extensiontask'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

Rake::ExtensionTask.new 'fast_year' do |ext|
  ext.lib_dir = 'lib/fast_year'
end
