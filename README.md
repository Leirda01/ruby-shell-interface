# Lien entre le terminal et un interpréteur Ruby.

## Usage de base
- Pour utiliser le shell de demo, lancez la commande `$ ruby demo.rb`
- Les commandes du shell sont dans le dossier `demoshell` et finissent toutes
  par l’extension `.rb`
- On peut exécuter deux commandes séquentiellement en les séparant d’un `;`
  (_e.g_ : `dis_bonjour; éko Salut toi!`)

## Créer ses propres commandes
- Toutes les commandes créés doivent être contenues dans un dossier qui portera
  le nom de l’interpréteur (_e.g_ : `demoshell/`)
- Le nom d’un fichier sera le nom de la commande, en plus de l’extension (.rb)
- On peut directement écrire du code Ruby qui sera chargé à l’appel de la
  commande.
- Pour récupérer les options associés à la commande, écrire son code dans `def
  main les_options_dans_un_tableau`. La fonction recevra les options en premier
  paramètre unique et optionnel. Si elle existe, elle sera appelée après le
  chargement du code.
- Les appels de la fonction sont faits dans des Threads séparés, donc en
  théorie, tout ce qu’il se passe dans un thread reste dans un thread (À TESTER)
