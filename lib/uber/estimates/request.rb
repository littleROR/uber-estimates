require 'rest-client'
require 'pry'
module Uber
  module Estimates
    class Request
      attr_accessor :status, :body
      HEADER = {Authorization: "Token #{::Uber::Estimates.configuration.server_token}" }.freeze

      def initialize(url, params={})
        binding.pry
        begin
          response = RestClient::Request.execute(method: :get, url: url, payload: params, headers: HEADER)
        rescue Exception
          puts "Problem on request"
        end
      end
    end
  end
end
