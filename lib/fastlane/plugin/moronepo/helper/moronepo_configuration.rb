class MoronepoConfiguration
  attr_accessor :working_directory
  attr_accessor :project
  attr_accessor :filter
  attr_accessor :command

  def initialize(dictionary)
    @working_directory = dictionary[:working_directory]
    @project = dictionary[:project]
    @filter = dictionary[:filter]
    @command = dictionary[:command]
  end
end
