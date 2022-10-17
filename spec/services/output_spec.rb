require_relative '../../lib/services/output.rb'

RSpec.describe Services::Output do
  it :call do 
    expect { described_class.stdout('OK') }.to output(/OK/).to_stdout
    expect { described_class.stderr('Error') }.to output(/Error/).to_stderr
  end
end

