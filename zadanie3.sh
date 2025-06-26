#Z_csv_do_sql_i_z_powrotem
unzip csv.zip
awk -F";" 'NR==1 {h=$1", "$2", "$3} NR>1 {printf("INSERT INTO stepsData (%s) VALUES (%s, %s, %s);\n", h, $1, $2, $3)}' steps-2sql.csv > csv2sql.sql
(echo "dateTime;steps;synced"; sed -r 's/^INSERT .* VALUES \(//;s/\);$//;s/, /;/g' test.sql | sed -r 's/^([0-9]{10})[0-9]{3}/\1/') > sql2csv.csv