# require_relative '../lib/git_stats'

RSpec.describe 'GitStats' do
  let(:gitstats) { instance_double('GitStats') }

  before do
    allow(gitstats).to receive(:count).and_return(1)
  end
  
  it :count do
    expect(gitstats.count).to be > 0
    expect(gitstats.count).to be_kind_of(Numeric)
  end

end
