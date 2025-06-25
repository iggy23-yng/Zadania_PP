#Dodawanie_poprawek
unzip lista.zip
dos2unix lista.txt lista-pop.txt
diff lista.txt lista-pop.txt | less
diff -u lista.txt lista-pop.txt > lista.patch
patch lista.txt < lista.patch
md5sum lista.txt
md5sum lista-pop.txt
