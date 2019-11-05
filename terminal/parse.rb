require_relative "run"

module Parse
  include Run

  def parse line
    exit if line.strip == "exit"
    # TODO : Make it a true, robust, parser
    #        For now it naively execute commands sequentially
    return "" if line.strip == ""
    line.split(";").each do |cmd|
      cmd = cmd.split
      run( cmd.first, cmd.drop(1) ).join
      puts "=> #{@stderr}" if @show_stderr and @stderr
    end
  end
end
