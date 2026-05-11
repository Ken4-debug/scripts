#!/usr/bin/bash
# arrays.sh

name=("Anna" "Jüri" "Mati")

echo "Esimene nimi: ${name[0]}"

for name in "${name[@]}"; do
    echo "$name"
done

# Tagurpidi
for ((x=${#names[@]}; x>=0; x--)); do
    echo "${names[x]}"
done
