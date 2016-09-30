require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}

  describe 'is the bike broken'
  it { expect(subject.broken).to eq false }


end
