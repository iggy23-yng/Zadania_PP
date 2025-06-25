#Niesforne_dane
unzip dane.zip
dos2unix dane.txt
echo -e "x\ty\tz" > danexyz.txt && paste - - - < dane.txt >> danexyz.txt
