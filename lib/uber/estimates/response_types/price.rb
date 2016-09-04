module Uber
  module Estimates
    module ResponseTypes
      class Price < BaseResponse
        attr_reader :high_estimate, :low_estimate, :duration, :surge_multiplier, :currency_code, :distance, :estimate
        def initialize(raw_hash)
          super(raw_hash)
          @high_estimate = raw_hash['high_estimate']
          @low_estimate = raw_hash['low_estimate']
          @duration = raw_hash['duration']
          @surge_multiplier = raw_hash['surge_multiplier']
          @currency_code = raw_hash['currency_code']
          @distance = raw_hash['distance']
          @estimate = raw_hash['estimate']
        end
      end
    end
  end
end