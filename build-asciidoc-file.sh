# MUST be executed from root folder

version=$(head -3 content/CHANGELOG.md | tail -n 1 | cut -c 5-9)

# Check CHANGELOG version parsing
while true; do
  echo "Is this change log version correct : $version [y/n]"
  read -r yn
  case $yn in
      [Yy]* ) break;;
      [Nn]* ) exit;;
      * ) echo "Please answer yes or no.";;
  esac
done

# Copy and fill version
sed "0,/X.Y.Z/s//$version/" content/tiny-house-auto-construction.adoc > output/tmp.adoc

# Convert
asciidoctor output/tmp.adoc
asciidoctor-pdf output/tmp.adoc

# Rename
mv output/tmp.pdf output/tiny-house-auto-construction-$version.pdf
mv output/tmp.html output/tiny-house-auto-construction-$version.html

# Remove tmp file and output
rm output/tmp.adoc
ls -la output
