# create master.adoc from nav.adoc

# replace
# [*]+ xref:(.*)\[.*\]

# with 
# include::pages/$1[leveloffset=+1]