require_relative "run"

module Parse
  include Run

  def parse line
    # Still not good code
    line = line.strip
    
    exit if line == "exit"
    return "" if line.strip == ""
    
    line.split( ";" ).each do |cmd|
      cmd, *opt = cmd.split.to_a
      run( @shell, cmd, opt ).join
      puts "=> #{@stderr}" if @stderr
    end
  end
end
