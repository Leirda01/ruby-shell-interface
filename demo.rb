require_relative "terminal/terminal"

demo = Terminal.new "demoshell"

demo.show_stderr=true

while demo.prompt "utilisatrice@demoshell>>> "
end
puts ""
