#!/bin/bash

YELLOW='\033[0;33m'
PURPLE='\033[0;35m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

cd ~/Dropbox/MathWiki/

while [ ! -z "$1" ]; do
    case "$1" in
        --update|-u)
            cd ./Notes

            numNotes=$(ls | wc -l)
            numDoubleLinks=$(sed 's/]],\ /]]\n/g' * | grep -Po "\[\[.*\]\]" | wc -l)
            numMathLinks=$(sed 's/),\ /)\n/g' * | grep -Po "\[.*\]\(.*\)" | wc -l)
            numLinks=$(($numDoubleLinks + $numMathLinks))

            ratio=$(bc -l <<< 'scale=3; '"$numLinks"'/'"$numNotes"'')

            cd ..
            cd ./Images

            numImages=$(($(find -type d | wc -l) - 1))

            cd ..
        ;;
        --print|-p)
            echo -e "${CYAN}$numNotes notes, $numLinks links, $numImages images${NC}"
            echo -e "${CYAN}    Ratio: $ratio${NC}"
        ;;
        --readme|-r)
            sed -i 's/[0-9][0-9]*\snotes/'"$numNotes"' notes/g' README.md
            sed -i 's/[0-9][0-9]*\slinks/'"$numLinks"' links/g' README.md
            sed -i 's/[0-9][0-9]*\simages/'"$numImages"' images/g' README.md

            templatesInsertLine=$(grep -n "#### Templates" ~/.config/nvim/UltiSnips/markdown.snippets | sed 's/:.*$//g')
            sed -i 's|\[templatesInsert\]:.*$|\[templatesInsert\]: https://github.com/zhaoshenzhai/dotfiles/blob/master/nvim/UltiSnips/markdown.snippets#L'"$templatesInsertLine"'|g' README.md

            tikzInsertLine=$(grep -n "newTikZ.sh" ~/.config/nvim/config/MathWiki.vim | sed 's/:.*$//g')
            sed -i 's|\[tikzInsert\]:.*$|\[tikzInsert\]: https://github.com/zhaoshenzhai/dotfiles/blob/master/nvim/config/MathWiki.vim#L'"$tikzInsertLine"'|g' README.md

            pdfLaTeXExecuteLine=$(grep -n "pdflatex -shell-escape image.tex" ~/.config/nvim/config/MathWiki.vim | sed 's/:.*$//g')
            sed -i 's|\[pdfLaTeXExecute\]:.*$|\[pdfLaTeXExecute\]: https://github.com/zhaoshenzhai/dotfiles/blob/master/nvim/config/MathWiki.vim#L'"$pdfLaTeXExecuteLine"'|g' README.md

            autoAliasLine=$(grep -n "Math()" ~/Dropbox/MathWiki/.scripts/mathLinks.sh | sed 's/:.*$//g')
            sed -i 's|\[standardAlias\]:.*$|\[standardAlias\]: https://github.com/zhaoshenzhai/MathWiki/blob/master/.scripts/mathLinks.sh#L'"$autoAliasLine"'|g' README.md
        ;;
    esac
shift
done
