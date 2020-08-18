require 'fastlane_core'

module Fastlane
  module Helper
    class OptionsHelper
      def self.working_directory
        FastlaneCore::ConfigItem.new(key: :working_directory,
            env_name: "FL_MORONEPO_WORKING_DIRECTORY",
            description: "Specifies the working directory",
            optional: true,
            type: String)
      end

      def self.project
        FastlaneCore::ConfigItem.new(key: :project,
            env_name: "FL_MORONEPO_PROJECT",
            description: "Specifies the project to run the command in",
            optional: true,
            type: String)
      end

      def self.filter
        FastlaneCore::ConfigItem.new(key: :filter,
            env_name: "FL_MORONEPO_FILTER",
            description: "Runs the command for projects that match filter. Available: [hasTests, !hasTests, isFlutter, !isFlutter, isRoot, !isRoot]",
            optional: true,
            type: Array)
      end
    end
  end
end
