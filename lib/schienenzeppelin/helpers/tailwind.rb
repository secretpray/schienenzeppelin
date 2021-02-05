# frozen_string_literal: true

module Schienenzeppelin
  module Helpers
    class Tailwind < HelperBase
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
