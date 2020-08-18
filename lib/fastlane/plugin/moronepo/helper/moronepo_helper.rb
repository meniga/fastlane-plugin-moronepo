require 'fastlane_core/ui/ui'
require 'fastlane/action'

require_relative 'moronepo_configuration'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class MoronepoHelper
      # class methods that you define here become available in your action
      # as `Helper::MoronepoHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the moronepo plugin helper!")
      end

      def self.dart_executable
        "flutter"
      end

      def self.moronepo_executable
        "#{dart_executable} pub global run moronepo"
      end

      def self.run_moronepo(configuration)
        cmd = []
        cmd << moronepo_executable

        working_directory = configuration.working_directory
        if working_directory
          cmd << "--working-directory"
          cmd << working_directory
        end

        project = configuration.project
        if project
          cmd << "--project"
          cmd << project
        end

        filter = configuration.filter
        if filter
          cmd << "--filter"
          cmd << filter.join(',')
        end

        cmd << configuration.command
        Actions.sh(cmd.join(' '))
      end
    end
  end
end
