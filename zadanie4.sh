unzip tlumacz.zip
sed -r 's/( *".*?,)/\/\/ \1\n\1/' en-7.2.json5 > pl-7.2.json5
grep '^[[:space:]]*"' en-7.2.json5 > keys-7.2.txt
grep '^[[:space:]]*"' en-7.4.json5 > keys-7.4.txt
grep -Fvx -f keys-7.2.txt keys-7.4.txt > nowe.txt
sed -r 's/( *".*?,)/\/\/ \1\n\1/' nowe.txt > pl-7.4.json5