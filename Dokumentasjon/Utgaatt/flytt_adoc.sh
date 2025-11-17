
#!/bin/bash

# Lag målmappen hvis den ikke finnes
mkdir -p dokumentasjon

# Finn og flytt alle .adoc-filer til dokumentasjon/
find . -type f -name "*.adoc" ! -path "./dokumentasjon/*" -exec mv {} dokumentasjon/ \;

# Legg til endringene i Git
git add -A
git commit -m "Flyttet alle .adoc-filer til dokumentasjon/"
git push
