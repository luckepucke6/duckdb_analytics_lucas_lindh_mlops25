# a) What is SQL, and why is it important in relational databases?
- SQL är Structured Query Language, ett språk för att arbeta med data i tabeller. Det är viktigt i relationella databaser eftersom SQL är sättet man hämtar,
filtrerar och analyserar data i tabeller.

# b) Explain the difference between FROM and WHERE clauses.
- FROM bestämmer vilken databas du vill hämta data ifrån. WHERE bestämmer vilka rader i tabellen som du vill ha.

# c) Explain the purpose of the LIMIT or OFFSET clause in a SQL query.
- LIMIT är när man bara vill printa ut ett specifikt antal, så om du t.ex. sätter LIMIT 5 så printas det endast ut 5 rader.
OFFSET är när du vill dölja lite data, så om du sätter t.ex. 'OFFSET 5' så visas inte de 5 första raderna.

# d) What are the primary functions of the Data Definition Language (DDL) in SQL?
- DDL (Data Definition Language) används för att skapa, ändra och ta bort strukturen i en databas, som tabeller och kolumner.
Exemple är CREATE TABLE, ALTER TABLE och DROP TABLE.

# e) Explain the differences between the Data Manipulation Language (DML) and Data Definition Language (DDL).
- DDL handlar om strukturen, om själva tabellerna själva. Det ändrar tabellerna.
DML handlar om datan, om själva innehållet i tabellerna. Det ändrar rader.

# f) What makes DuckDB unique compared to other databases?
- DuckDB är unikt för att det är bara att köra, det krävs ingen installation av server, inget login eller nätverk. Det lagra kolumn för kolumn, inte rad för rad.
Det är därför väldigt snabbt när man vill göra analyser, räkna statistik, filtrera osv.

# g) Is DuckDB suitable for real-time data processing?
- Nej, DuckDB är inte lämpligt för real-time processing eftersom det är byggt för analys och inte klarar kontinuerliga, snabba uppdateringar.

# h) Difference between read_csv and read_csv_auto
- read_csv_auto låter DuckDB själv gissa sådant som datatyper, separatorer och om filen har header.
Medans read_csv kräver att du själv talar om hur CSV-filen ser ut, till exempel vilken separator som används och vilka datatyper kolumnerna ska ha.