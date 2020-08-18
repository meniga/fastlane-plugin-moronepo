class MoronepoConfiguration
  attr_accessor :working_directory
  attr_accessor :command

  def initialize(dictionary)
    @working_directory = dictionary[:working_directory]
    @command = dictionary[:command]
  end
end
