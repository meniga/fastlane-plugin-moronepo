require 'fastlane/action'
require_relative '../helper/moronepo_helper'

module Fastlane
  module Actions
    class MoronepoActivateAction < Action
      def self.run(params)
        cmd = []
        cmd << Helper::MoronepoHelper.dart_executable
        cmd << "pub global activate moronepo"
        Actions.sh(cmd.join(' '))
      end

      def self.description
        "Run flutter pub global activate moronepo"
      end

      def self.authors
        ["Marcin Stepnowski"]
      end

      def self.available_options
        []
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
