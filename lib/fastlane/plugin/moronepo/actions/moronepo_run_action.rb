require 'fastlane/action'
require_relative '../helper/moronepo_helper'
require_relative '../helper/options_helper'

module Fastlane
  module Actions
    class MoronepoRunAction < Action
      def self.run(params)
        configuration = MoronepoConfiguration.new(params.values)
        configuration.command = "run -- #{params[:arguments]}"
        Helper::MoronepoHelper.run_moronepo(configuration)
      end

      def self.description
        "Runs command for all subprojects or a specified project"
      end

      def self.authors
        ["Marcin Stepnowski"]
      end

      def self.available_options
        [
          Helper::OptionsHelper.working_directory,
          Helper::OptionsHelper.project,
          Helper::OptionsHelper.filter,
          FastlaneCore::ConfigItem.new(key: :arguments,
            env_name: "FL_MORONEPO_RUN_ARGUMENTS",
            description: "Run command arguments",
            optional: false,
            type: String)
        ]
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
