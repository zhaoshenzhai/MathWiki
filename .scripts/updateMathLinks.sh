#!/bin/bash

CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m'

cd ~/MathWiki/Notes

allLinks=$(grep -Po '\[([^\$^\[^\]]+\s)+\$[^\$]+\$[^\$^\[^\]]*\]\(([^\$^\[^\]]+%20)+[^\$^\[^\]]*(\.md)*\)' *)
allLinks=${allLinks#*:}
allLinks=$(echo "$allLinks" | uniq)

allCurrent=$(echo "$allLinks" | sed 's/\[\([^]]*\)\].*/\1/g')
allNewObsidian=$(echo "$allLinks" | sed 's/\[\([^]]*\)\](\(.*$\)/\2/g' | sed 's/.$//g')
allNew=$(echo "$allNewObsidian" | sed 's/\(.*\).md/\1/' | sed 's/%20/\ /g')

allNew=$(sed 's/\ R\ /\ \$\\R\$\ /g' <<< "$allNew")        # Real numbers

while IFS="," read -r current; do
    new=${allNew%%$'\n'*}

    if [ ! "$new" == "$current" ]; then
        echo "Current: $current"
        echo "New    : $new"

        read -u 1 -n 1 -p "$(echo -e '\n'${CYAN}"Proceed? [Y/n] "${NC})" proceed
        if [ -z "$proceed" ] || [ "$proceed" == "Y" ]; then
            currentFormatted=$(sed 's/\\/\\\\/g' <<< "$current")                 # Excape \
            currentFormatted=$(sed 's/\ /\\s/g' <<< "$currentFormatted")         # Escape <Space>
            currentFormatted=$(sed 's/\[/\\\[/g' <<< "$currentFormatted")        # Escape [
            currentFormatted=$(sed 's/\]/\\\]/g' <<< "$currentFormatted")        # Escape ]
            currentFormatted=$(sed 's/(/\\(/g' <<< "$currentFormatted")          # Escape (
            currentFormatted=$(sed 's/)/\\)/g' <<< "$currentFormatted")          # Escape )
            currentFormatted=$(sed 's/{/\\{/g' <<< "$currentFormatted")          # Escape {
            currentFormatted=$(sed 's/}/\\}/g' <<< "$currentFormatted")          # Escape }
            currentFormatted=$(sed 's/\$/\\\$/g' <<< "$currentFormatted")        # Escape $
            currentFormatted=$(sed 's/\^/\\\^/g' <<< "$currentFormatted")        # Escape ^
            currentFormatted=$(sed 's/|/\\|/g' <<< "$currentFormatted")          # Escape |
            currentFormatted=$(sed 's/+/\\+/g' <<< "$currentFormatted")          # Escape +
            currentFormatted=$(sed 's/\./\\./g' <<< "$currentFormatted")         # Escape +

            newObsidian=${allNewObsidian%%$'\n'*}
            allFiles=$(grep -l "$newObsidian" *)
            numFiles=$(echo "$allFiles" | wc -l)
            new=$(echo "$new" | sed 's/\\/\\\\/g')

            echo "Current Formatted: $currentFormatted"
            echo "New: $new"

            while IFS= read -r file; do
                sed -Ei 's/'"$currentFormatted"'/'"$new"'/g' "$file"
            done <<< "$allFiles"
            echo -e "${GREEN}$numFiles" file\(s\) updated:"${NC}"
            while IFS= read -r file; do
                echo "    $file"
            done <<< "$allFiles"

        fi

        printf "\n"
    fi

    allNew=${allNew#*$'\n'}
    allNewObsidian=${allNewObsidian#*$'\n'}
done <<< "$allCurrent"
