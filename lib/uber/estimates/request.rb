require 'rest-client'
require 'pry'
module Uber
  module Estimates
    class Request
      attr_reader :header, :type, :params
      URLS = {time: 'https://api.uber.com/v1/estimates/time', price: 'https://api.uber.com/v1/estimates/price'}.freeze

      def initialize(type, params)
        @type = type
        @params = params
        @header = {Authorization: %Q[Token #{::Uber::Estimates.configuration.server_token}] }
      end

      def response
        Response.new(type, raw_response)
      end

      private

      def raw_response
        begin
          RestClient::Request.execute(method: :get, url: URLS[type], payload: params, headers: header)
        rescue Exception => e
          raise BadRequestException.new('Something went wrong on request. Please check params')
        end
      end
    end
  end
end
