# frozen_string_literal: true

require 'rails/command/base'
require 'rails/generators/app_base'
require 'rails/generators'
require 'rails/generators/app_name'
require 'rails/generators/rails/app/app_generator'
require 'bundler'

require_relative 'schienenzeppelin/version'
require_relative 'schienenzeppelin/helper_base'
Dir[File.join(__dir__, 'schienenzeppelin', 'helpers', '*.rb')].each { |file| require file }
require_relative 'schienenzeppelin/app_generator'
require_relative 'schienenzeppelin/app_builder'

module Schienenzeppelin
  class Error < StandardError; end
end
