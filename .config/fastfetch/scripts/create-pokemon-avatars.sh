#!/bin/bash

main() {
  cd ~/.config/fastfetch/logos/ 
  mkdir -p pokemons
  declare -A saved
  read -p "how many pokemons: " pokemon_count

  for i in $(seq 1 $pokemon_count); do
    temp=$(mktemp)
    pokemonthink hi > "$temp"

    # get Pokémon name (last non-empty line)
    name=$(awk 'NF {last=$0} END {print last}' "$temp")

    # skip if already saved
    if [[ ${saved[$name]} ]]; then
      rm "$temp"
      continue
    fi

    
    # Find the line number Pokemon art starts
    start=$(awk 'NR>1 {if (p ~ /o/) last=NR-1} {p=$0} END{print last}' "$temp")
    start=$((start + 1))
    end=$(wc -l < $temp)
    end=$((end - 2))
    area=$((end - start + 1))

    #Extract the pokemon art
    if [[ -n "$start" ]]; then
      cat "$temp" | head -n $end | tail -n $area > "pokemons/${name}.txt"
      saved[$name]=1
      echo "Saved $name"
    fi
    rm "$temp"
  done
}

main
