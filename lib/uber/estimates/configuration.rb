require 'pry'
module Uber
  module Estimates
    class Configuration
      attr_accessor :server_token

      def initialize
        @server_token = 'DEFAULT_TOKEN'
      end
    end
  end
end