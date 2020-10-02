# frozen_string_literal: true

RSpec.describe FastYear do
  it 'has a version number' do
    expect(FastYear::VERSION).not_to be nil
  end

  it 'returns the correct year' do
    expect(FastYear.year).to eq(Time.now.year)
  end
end
