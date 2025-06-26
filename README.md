# Zadania projektowe z PP  

<br>

## Zadanie 3 - Niesforne dane  
<br>

#### **Rozpakowanie pliku z katalogu zip**

unzip dane.zip

<br>

#### **Konwersja na plik txt**

dos2unix dane.txt

<br>

#### **Tworzenie pliku, dodanie nagłówków oraz utworzenie kolumn**   
echo -e "x\ty\tz" > danexyz.txt && paste - - - < dane.txt >> danexyz.txt

<br>

## Zadanie 4 - Dodawanie poprawek
<br>

#### **Rozpakowanie katalogu zip** 

unzip lista.zip

<br>

#### **Konwersja na plik txt**
dos2unix lista.txt lista-pop.txt

<br>

#### **Porównanie dóch plików i wyświetlenie różnic w terminalu**
diff lista.txt lista-pop.txt | less

<br>

#### **Stworzenie łatki do zaaktualizowania listy**
diff -u lista.txt lista-pop.txt > lista.patch

<br>

#### **Zastosowanie łatki do oryginalnej listy**
patch lista.txt < lista.patch

<br>

#### **Sprawdzenie sumy**
md5sum lista.txt
md5sum lista-pop.txt

<br>

## Zadanie 5 - Z CSV do SQL i z powrotem
<br>

#### **Rozpakowanie katalogu zip** 

unzip csv.zip

<br>

#### **Konwersja na plik txt**
dos2unix lista.txt lista-pop.txt

<br>

#### **Porównanie dóch plików i wyświetlenie różnic w terminalu**
diff lista.txt lista-pop.txt | less

<br>

#### **Stworzenie łatki do zaaktualizowania listy**
diff -u lista.txt lista-pop.txt > lista.patch

<br>

#### **Zastosowanie łatki do oryginalnej listy**
patch lista.txt < lista.patch

<br>

#### **Sprawdzenie sumy**
md5sum lista.txt
md5sum lista-pop.txt

<br>

## Zadanie 6 - Marudny tłumacz

<br>

#### **Rozpakowanie katalogu zip** 
unzip tlumacz.zip

<br>

#### **Duplikowanie każdej linii**

sed -r 's/( *".*?,)/\/\/ \1\n\1/' en-7.2.json5 > pl-7.2.json5

<br>

#### **Wyciągnięcie wszystkich linii, które zaczynają się od spacji**
grep '^[[:space:]]*"' en-7.2.json5 > keys-7.2.txt

grep '^[[:space:]]*"' en-7.4.json5 > keys-7.4.txt

<br>

#### **Porównanie plików, wybranie nowych linii, których nie było w en-7.2, zapisanie wyniku do nowe.txt**
grep -Fvx -f keys-7.2.txt keys-7.4.txt > nowe.txt

<br>

#### **Generowanie pliku z nowych linii**
sed -r 's/( *".*?,)/\/\/ \1\n\1/' nowe.txt > pl-7.4.json5

<br>

## Zadanie 7 - Fotograf gamoń

<br>

#### **Rozpakowanie danych do katalogu fotografie**
unzip kopie-1.zip -d fotografie

unzip kopie-2.zip -d fotografie

<br>

#### **Wejście do katalogu fotografie**

cd fotografie

<br>

#### **Rozpakowanie danych do katalogu rozpakowane_foto**
unzip '*.zip' -d ../rozpakowane_foto

<br>

#### **Wyjście z katalogu**
cd ..

<br>

#### **Zmiana formatu z .png na .jpg**
magick mogrify -format jpg rozpakowane_foto/*.png

<br>

#### **Zmiana rozdzielczości i wysokości**
magick mogrify -resize x720 -density 96x96 rozpakowane_foto/*.jpg 

<br>

#### **Utworzenie archiwum_foto**
zip archiwum_foto rozpakowane_foto/*.jpg

<br>

## Zadanie 8 - Wszędzie te PDF-y

<br>

#### **Utworzenie katalogu portfolio**
mkdir -p portfolio

<br>

#### **Wejście do katalogu rozpakowane_foto**
cd rozpakowane_foto

<br>

#### **Wylosowanie 8 plików do katalogu portfolio**
ls *.jpg | shuf | head -8 | while read file; do cp "$file" ../portfolio/; done

<br>

#### **Wyjście z katalogu rozpakowane_foto**
cd ..

<br>

#### **Tworzenie obrazu układając fotografię w siatke 2 na 4**
magick montage -label %f portfolio/*.jpg -tile 2x4 -geometry 1235x870+5+5 -pointsize 20 portfolio.jpg

<br>

#### **Przekształcenie obrazu w plik PDF**
magick portfolio.jpg -density 300 -resize 2480x3508 -gravity center -extent 2480x3508 portfolio_a4.pdf

<br>

## Zadanie 9 - Porządki w kopiach zapasowych

<br>

#### **Skrypt w pliku zadanie7.sh**

<br>

## Zadanie 10 - Galeria dla grafika

<br>

#### **Skrypt w pliku zadanie8.sh**

<br>

