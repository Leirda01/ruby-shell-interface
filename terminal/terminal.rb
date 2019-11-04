require_relative "parse"

class Terminal
  include Parse

  def initialize shell, mesg = nil
    raise "#{shell} doesn't exist!" unless Dir.exist? shell

    @shell = shell
    puts mesg ? mesg : "A ruby simple #{shell} interpreter."
  end

  def prompt pprompt = ">>> "
    print pprompt
    begin
      parse $_ if gets
    rescue Interrupt
      puts; return "KeyboardInterrupt\n"
    end
  end
end
