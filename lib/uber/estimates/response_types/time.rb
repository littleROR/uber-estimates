module Uber
  module Estimates
    module ResponseTypes
      class Time < BaseResponse
        attr_reader :estimate

        def initialize(raw_hash)
          super(raw_hash)
          @estimate = raw_hash['estimate']
        end
      end
    end
  end
end