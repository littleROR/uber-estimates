require 'rubygems'
require 'bundler/setup'
require_relative 'support/custom_raw_response'


def uber_stub_request(type, params)
  custom_raw_response = CustomRawResponse.new(200, (type == :price ? CustomRawResponse.price_estimates_response : CustomRawResponse.time_estimates_response))
  response = Uber::Estimates::Response.new(type, custom_raw_response)

  allow(Uber::Estimates).to receive(:get_estimations).with(type, params).and_return(response)
end
