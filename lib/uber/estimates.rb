require 'pry'
require "uber/estimates/version"
require "uber/estimates/configuration"
require "uber/estimates/type_exception"
require "uber/estimates/request"

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
      Request.new('https://api.uber.com/v1/estimates/time', {start_latitude: 44.426941, start_longitude: 26.1207898 , end_latitude: 44.423066, end_longitude: 26.0887903 })
    end

  end
end
