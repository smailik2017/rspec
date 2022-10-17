require_relative '../lib/services/block_generator'
RSpec.describe Services::BlockGenerator do
  it :call do
    expect{ |block| described_class.call(&block) }.to yield_control
    # expect{ |block| 
    #   described_class.call(&block) 
    # }.to yield_with_args(10, 'foo', a_value_within(0.1).of(3.14))
  end
end
