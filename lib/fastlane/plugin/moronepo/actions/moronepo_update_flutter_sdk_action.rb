require 'fastlane/action'
require_relative '../helper/moronepo_helper'
require_relative '../helper/options_helper'

module Fastlane
  module Actions
    class MoronepoUpdateFlutterSdkAction < Action
      def self.run(params)
        configuration = MoronepoConfiguration.new(params.values)
        configuration.command = "update-flutter-sdk"
        Helper::MoronepoHelper.run_moronepo(configuration, other_action)
      end

      def self.description
        "Run update-flutter-sdk"
      end

      def self.authors
        ["Marcin Stepnowski"]
      end

      def self.available_options
        [Helper::OptionsHelper.working_directory]
      end

      def self.is_supported?(platform)
        true
      end

      def self.category
        :building
      end
    end
  end
end
