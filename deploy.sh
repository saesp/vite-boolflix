#!/usr/bin/env sh

set -e
 

npm run build

cd dist

git init

git add .

git commit -m "New Deploy"

git push -f https://github.com/saesp/vite-boolflix.git master:gh-pages  

cd .. 

rm -rf dist

# dare permessi di esecuzione al file 'chmod +x deploy.sh'"