require 'spec_helper'

RSpec.describe DSRequitment::DataFormatter do

  let(:logger) do
    double(:logger, warn: nil, info: nil, error: nil)
  end

  subject do
    described_class.new logger
  end

  let(:input) do
    {

    }
  end

  it 'returns proper company name' do
    expect(subject.call(input).dig(:a)).to include({b: 1})
  end

end
