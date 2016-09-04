require 'spec_helper'
require 'uber/estimates'
require 'byebug'

RSpec.describe Uber::Estimates do
  let!(:params) { {start_latitude: 0.0, start_longitude: 0.0, end_latitude: 42.44, end_longitude: 27.33} }

  context 'valid request and response' do
    before(:each) do
      uber_stub_request(:time, params)
    end

    it 'returns 200 status code and a valid response' do
      response = Uber::Estimates.get_estimations(:time, params)

      expect(response.class).to eq(Uber::Estimates::Response)
      expect(response.data.map(&:class).uniq).to eq([Uber::Estimates::ResponseTypes::Time])
      expect(response.code).to eq(200)
      expect(response.data.size).to eq(CustomRawResponse.time_estimates_response[:times].size)

      fe = response.data.first
      fc = CustomRawResponse.time_estimates_response[:times].first

      fc.each do |key, value|
        expect(fe.send(key.to_sym)).to eq(value)
      end
    end
  end

  context 'Invalid request' do
    it 'Raise Bad Request exception when params are incomplete' do
      expect {
        Uber::Estimates.get_estimations(:time, params.delete(:end_latitude))
      }.to raise_error(Uber::Estimates::BadRequestException)
    end

    it 'Raise TypeException when type is not valid' do
      expect {
        Uber::Estimates.get_estimations(:My_time, params)
      }.to raise_error(Uber::Estimates::TypeException)
    end
  end
end
