require_relative "terminal/terminal"

demo = Terminal.new "demoshell"

while demo.prompt "utilisatrice@demoshell>>> "
end
puts
