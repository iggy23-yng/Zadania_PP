#Wszędzie_te_PDF-y
mkdir -p portfolio
cd rozpakowane
ls *.jpg | shuf | head -8 | while read file; do cp "$file" ../portfolio/; done
cd ..
magick montage -label %f portfolio/*.jpg -tile 2x4 -geometry 1235x870+5+5 -pointsize 20 portfolio.jpg
magick portfolio.jpg -density 300 -resize 2480x3508 -gravity center -extent 2480x3508 portfolio_a4.pdf

