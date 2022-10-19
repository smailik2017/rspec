require_relative '../lib/game'
require_relative '../lib/user'

RSpec.describe User do
  let(:user) { described_class.new(
      first_name: '',
      last_name: '',
      middle_name: 'test3'
    ) 
  }
  
  before do
    allow(user).to receive(:middle_name).and_return('-')
  end

  it 'атрибуты' do
    expect(user.first_name).to eq ''
    expect(user.last_name).to eq ''
    expect(user.middle_name).to eq '-'
  end
end
