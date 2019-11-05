require_relative "parse"

class Terminal
  include Parse

  def initialize shell, mesg = nil
    raise "#{shell} doesn't exist!" unless Dir.exist? shell

    @shell = shell
    @show_stderr = false
    puts mesg ? mesg : "A ruby simple #{shell} interpreter."
  end

  def show_stderr= bool
    @show_stderr = bool
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
