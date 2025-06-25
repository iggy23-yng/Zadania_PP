# Rozpakowanie katalogu .zip
unzip dane.zip

# konwersja końca linii
dos2unix dane.txt
 
# Tworzenie pliku z nagłówkiem i podziałem na kolumny
echo -e "x\ty\tz" > danexyz.txt && paste - - - < dane.txt >> danexyz.txt 

