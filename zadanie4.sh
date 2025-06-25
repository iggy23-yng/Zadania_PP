unzip tlumacz.zip
sed -r 's/( *".*?,)/\/\/ \1\n\1/' en-7.2.json5 > pl-7.2.json5
