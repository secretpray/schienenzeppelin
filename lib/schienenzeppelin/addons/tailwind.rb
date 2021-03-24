# frozen_string_literal: true

module Schienenzeppelin
  module AddOns
    class Tailwind < AddOn
      gem 'tailwindcss-rails', description: 'Tailwind CSS for Rails'

      def apply
        rails_command('tailwindcss:install')
        template('app/javascript/stylesheets/components.scss')
        insert_into_file 'app/javascript/stylesheets/application.scss' do
          <<~CSS

            @import "components";
          CSS
        end
      end
    end
  end
end
