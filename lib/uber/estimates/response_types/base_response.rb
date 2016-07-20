module Uber
  module Estimates
    module ResponseTypes
      class BaseResponse
        attr_reader :localized_display_name, :display_name, :product_id

        def initialize(raw_hash)
          @localized_display_name = raw_hash['localized_display_name']
          @display_name = raw_hash['display_name']
          @product_id = raw_hash['product_id']
        end
      end
    end
  end
end