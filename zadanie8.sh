#Galeria_dla_grafika
cd rozpakowane_foto
for zdjecie in *.jpg
do
cat >> ../div.txt << EOF
<div class="responsive">
    <div class="gallery">
        <a target="_blank" href="$zdjecie">
            <img src="$zdjecie">
        </a>
        <div class="desc">$zdjecie</div>
    </div>
</div>
EOF
done