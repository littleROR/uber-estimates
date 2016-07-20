require 'pry'
require "uber/estimates/version"
require "uber/estimates/configuration"
require "uber/estimates/type_exception"
require "uber/estimates/bad_request_exception"
require "uber/estimates/request"
require "uber/estimates/response_types/base_response"
require "uber/estimates/response_types/time"
require "uber/estimates/response_types/price"
require "uber/estimates/response"

module Uber
  module Estimates

    TYPES = [:price, :time].freeze
    class << self
      attr_accessor :configuration
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configure
      yield(configuration)
    end

    def self.get_estimations(type, params)
      raise TypeException.new('Type must be :price or :time') unless TYPES.include?(type)
      response = Request.new(type, params).response
    end
  end
end
