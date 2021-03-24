# frozen_string_literal: true

module Schienenzeppelin
  module AddOns
    class FactoryBot < AddOn
      def apply
        # TODO: Make this work for minitest
        empty_directory 'spec/factories'
        template('spec/support/factory_bot.rb')
      end
    end
  end
end