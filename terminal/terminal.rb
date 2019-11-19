require_relative "parse"

class Terminal
  include Parse

  def initialize shell, mesg = nil
    raise "#{shell} doesn't exist!" unless Dir.exist? shell

    @shell = shell
    puts mesg ? mesg : "A ruby simple #{shell} interpreter."
  end

  def prompt prompt_string = ">>> "
    print prompt_string
    begin
      parse $_ if gets
    rescue Interrupt
      puts; return "KeyboardInterrupt\n"
    end
  end

  def lol
    puts "mdr"
  end

end
