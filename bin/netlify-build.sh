
echo 'netlify-publish-adoc'
node_modules/.bin/antora --html-url-extension-style=indexify --pull ../antora-site.yml


echo 'node-publish-adoc'

# publish each file, eg
# node index.js ../modules/ROOT/pages/ds-audit.adoc > ../build/site/ds-audit.adoc

for filename in ../modules/ROOT/pages/*.adoc; do

  node index.js  $filename > ../build/site/$(basename "$filename")

done

