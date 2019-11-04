require_relative "run"

module Parse
  include Run

  def parse line
    # TODO : Make it a true, robust, parser
    #        For now it naively execute commands sequentially
    return "" if line.strip == ""
    line.split(";").each do |cmd|
      cmd = cmd.split
      run( cmd.first, cmd.drop(1) ).join
    end
  end
end
