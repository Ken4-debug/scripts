#!/usr/bin/bash

# Puhasta ekraan
clear

echo "Bash versioon: $BASH_VERSION"
RED='\033[0;31m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

echo -e "Tere tulemast ${RED}Bash Shellis{NC} maailma!"
echo -e "Ott Tänak on ${BLUE}lahe{NC}!"

# Küsime kasutajalt nii kaua, kui saame õige variandi (Jah või Ei)
while true; do
    read -p "Kas jätkame skripti jooksutamist [j/e]? " result
    case $result in
        [Jj]* ) echo "Jätkame skripti jooksutamist..."; break;;
        [Ee]* ) echo "Skript lõpetatud."; exit;;
        * ) echo "Palun vastake 'ja' või 'ei'.";;
    esac
done

echo "Skript jätkub..."

# Tavaline for-loop
for((x=1; x<11; x++)); do
echo -e "Tere ${RED}$x${NC}. korda"
done

# Ootame kastuaja järgi
read -r -n 1 -s -p "Jätkamiseks vajuta Enter ..."
echo # Reavahetuses peale eelnevat read'i!

# Mitte tavaline :)
for x in {1..10}; 
do
    echo -e "Tere ${RED}$x${NC}. korda. Imelik variant"
done

read -r -n 1 -s -p "Jätkamiseks vajuta Enter ..."
echo # Reavahetuses peale eelnevat read'i!

for x in {0..10..2}; do
    echo -e "Paari kaupa suurendamine ${BLUE}$x${NC}"
done

read -r -n 1 -s -p "Jätkamiseks vajuta Enter ..."
echo # Reavahetuses peale eelnevat read'i!

# while loop 10 => 0
x=10
while [ $x -ge 0 ]; do
    echo $x
    x=$((x - 1))
done