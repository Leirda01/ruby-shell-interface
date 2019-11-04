require_relative "terminal/terminal"

demo = Terminal.new "demoshell", %Q{Un exemple d’utilisation de mon shell."
Bienvenue. Tu peux utiliser les commandes `éko`, `dis_bonjour`, et `exit`}
while demo.prompt "utilisatrice@demoshell>>> "
end
puts ""
