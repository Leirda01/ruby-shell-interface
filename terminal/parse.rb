require_relative "run"

module Parse
  include Run

  def parse line
    # Still not good code
    line = line.strip
    
    exit if line == "exit"
    return system line[1..-1] if line[0] == "!"
    return "" if line == ""
    
    line.split( ";" ).each do |cmd|
      cmd, *opt = cmd.split.to_a
      Thread.new { @stderr = run @shell, cmd, opt }.join
      puts "=> #{@stderr}" if @stderr
    end
  end
end
