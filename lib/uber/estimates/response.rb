require 'json'
module Uber
  module Estimates
    class Response
      attr_reader :code, :data

      def initialize(type, raw_response)
        @code = raw_response.code
        if code >= 200 && code < 300
          raw = JSON.parse(raw_response)
          if type == :time
            @data = raw['times'].map{ |raw_hash| ResponseTypes::Time.new(raw_hash) }
          else
            @data = raw['prices'].map{ |raw_hash| ResponseTypes::Price.new(raw_hash) }
          end
        else
          @data = []
        end
      end
    end
  end
end
