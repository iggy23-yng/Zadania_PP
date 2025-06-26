#Fotograf_gamon
unzip kopie-1.zip -d fotografie
unzip kopie-2.zip -d fotografie
cd fotografie
unzip '*.zip' -d ../rozpakowane_foto
cd ..
magick mogrify -format jpg rozpakowane_foto/*.png
magick mogrify -resize x720 -density 96x96 rozpakowane_foto/*.jpg 
zip archiwum_foto rozpakowane_foto/*.jpg