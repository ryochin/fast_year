# frozen_string_literal: true

require 'benchmark/ips'
require 'fast_year'

Benchmark.ips do |r|
  r.report 'time_year' do
    Time.now.year
  end
  r.report 'fast_year' do
    FastYear.year
  end

  r.compare!
end
