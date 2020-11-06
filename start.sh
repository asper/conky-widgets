#!/bin/bash

# On ne lance pas conky de suite, on attend un peu pour ne pas ralentir le démarrage de l'ordinateur
sleep 10

# Dossier courrant
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# On lance chacun des composants
COMPONENTS=(time system processes memory filesystem network mediaplayer fortune)

for COMP in "${COMPONENTS[@]}"
do
    conky -dq -c $DIR/components/$COMP.conf
done