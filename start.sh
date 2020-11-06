#!/bin/bash

# On ne lance pas conky de suite, on attend un peu pour ne pas ralentir le démarrage de l'ordinateur
#sleep 10

# On lance chacun des composants
COMPONENTS=(time system processes memory filesystem network mediaplayer fortune)

for COMP in "${COMPONENTS[@]}"
do
    conky -dq -c ./components/$COMP.conf
done