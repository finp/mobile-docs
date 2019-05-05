

cd modules/ROOT/pages/
pages_path=`pwd`
echo $pages_path
cd _partials
find $1 -type f -name '*.adoc' |\
  while IFS= read -r inc_path
  do
   inc_basename=$(basename "${inc_path}")
   git mv $inc_path $pages_path/$1-$inc_basename

#    inc_dirname=$(dirname "${inc_path}")
#    ruby asciidoc-coalescer.rb  -a allow-uri-read $inc_path > $inc_path-rantora.adoc
    
  done
