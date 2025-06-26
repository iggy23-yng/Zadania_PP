#Porządki_w_kopiach_zapasowych
unzip -o kopie-1.zip -d kopie-1
unzip -o kopie-2.zip -d kopie-2
DEST="kopie-uporzadkowane"
mkdir -p "$DEST"
for katalog in kopie-1 kopie-2; do
    for plik in "$katalog"/*.zip; do
        [ -f "$plik" ] || continue
        rok=$(basename "$plik" | cut -d'-' -f1)
        miesiac=$(basename "$plik" | cut -d'-' -f2)
        mkdir -p "$DEST/$rok/$miesiac"
        cp "$plik" "$DEST/$rok/$miesiac/"
    done
done