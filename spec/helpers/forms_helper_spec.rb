# frozen_string_literal: true

RSpec.describe FormsHelper, type: 'helper' do
  it 'checks whether the number is prime and returns true or false ' do
    expect(helper.prime?(-1)).to eq(false)
    expect(helper.prime?(0)).to eq(false)
    expect(helper.prime?(1)).to eq(false)
    expect(helper.prime?(2)).to eq(true)
    expect(helper.prime?(7)).to eq(true)
    expect(helper.prime?(21)).to eq(false)
  end
end
