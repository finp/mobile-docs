
echo 'netlify-publish-adoc'
node_modules/.bin/antora --html-url-extension-style=indexify --pull ../antora-site.yml

# ../bin/publish-adoc.sh > 

echo 'node-publish-adoc'


node index.js ../modules/ROOT/pages/ds-audit.adoc > ../build/site/ds-audit.adoc