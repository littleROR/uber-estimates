require 'spec_helper'
require 'uber/estimates'
require 'byebug'

RSpec.describe Uber::Estimates do
  context 'not configured' do
    it 'server token default' do
      expect(Uber::Estimates.configuration.server_token).to eq('DEFAULT_TOKEN')
    end
  end

  context 'valid configuration' do
    before(:each) do
      Uber::Estimates.configure do |config|
        config.server_token = 'MY_TEST_SERVER_TOKEN'
      end
    end

    it 'set server token' do
      expect(Uber::Estimates.configuration.server_token).to eq('MY_TEST_SERVER_TOKEN')
    end
  end
end
