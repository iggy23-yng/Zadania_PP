#Zadanie_2
unzip lista.zip
dos2unix lista.txt lista-pop.txt
diff lista.txt lista-pop.txt | less
diff -u lista.txt lista-pop.txt > lista.patch


