#!/bin/zsh

cat src/header.html src/index.html src/footer.html > index.html
cat src/header.html src/about.html src/footer.html > about.html

echo "site has been generated"