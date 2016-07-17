require 'pry'
require "uber/estimates/version"
require "uber/estimates/configuration"

module Uber
  module Estimates
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
      binding.pry
    end

  end
end
