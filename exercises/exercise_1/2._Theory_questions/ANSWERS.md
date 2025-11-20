# a) What are the main categories of SQL commands?
- DDL (Data Definition Language): skapa och ändra tabeller.
- DML (Data Manipulation Language): lägga till, ändra, ta bort rader.
- DQL (Data Query Language): hämta data, t.ex. SELECT.
- DCL (Data Control Language): rättigheter.

# b) Explain the difference between HAVING and WHERE clauses?
- HAVING filtrerar grupper efter GROUP BY.
- WHERE filtrerar rader före gruppering.

# c) How to make sure you delete the correct rows?
- Man kollar upp först och säkerställer så att man tar ut dem rätta raderna i en cell. Sen när man ser att man valt rätt så kan man radera.
- Man använder sig av WHERE för att kolla vart man ska ta bort, och DELETE med samma WHERE när man väl ska ta bort.

# d) How do you retrieve unique values in a column?
- Med DISTINCT.

# e) What does data transformation mean?
- Man transformerar och städer rådata så att det är klar för analys. T.ex. om det finns ' lUCas' i en rad så ska man städa den så att den blir 'Lucas'.

# f) How do you create a new row in a table?
- Man använder INSERT INTO.

# g) What happens if you omit the WHERE clause in an UPDATE statement?
- Om man utelämnar WHERE så blir det stor risk att man gör fel.

# h) What happens if you omit the WHERE clause in a DELETE statement?
- Om man utelämnar WHERE så blir tabellen tom, men tabellen i sig finns kvar.

# i) What is a conditional statement in SQL, and can it be used with SELECT?
- Det är CASE. Den fungerar som if/else i python.