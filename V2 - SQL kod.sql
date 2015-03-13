/*Listing 1
Prikazati podatke sa atributima: ID kupca, prezime, ime i titulom kupca*/

USE Northwind
SELECT EmployeeID, LastName, FirstName, Title
FROM Employees

/*Listing 2
Prikazati podatke sa Id, prezimenom, imenom i titulom kupca
ali samo one gdje je ID ima vrijednost 9*/

USE Northwind
SELECT EmployeeID, LastName, FirstName, Title
FROM Employees
WHERE EmployeeID = 9

/*Listing 3
Napisati upit koji prikazuje prezime, grad i dr�avu zaposlinika iz UK*/

USE Northwind
SELECT LastName, City, Country
FROM Employees
WHERE Country = 'UK'

/*Listing 4
Potrebno je prikazati podatke o narud�bama koje su napravljenje
prije 08.01.1996 . Izlaz treba da sadr�i broj narud�bem broj kupca i datum*/

USE Northwind
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE OrderDate < '08.01.1996'

/*Listing 5
Prikazati ime kompanije kupaca i to samo onih koji u svome imenu
posjeduju rije� "Restaurant"*/

USE Northwind
SELECT CompanyName
FROM Customers
WHERE CompanyName LIKE '%Restaurant%'

/* Listing 6
Prikazati listu proizvoda �ije ime po�inje sa slovom T ili je identifikator proizovsa 46.
Tako�e, lista treba da sadr�i one proizove �ija je cijena po komadu ve�a od 16*/

USE Northwind
SELECT ProductID, ProductName, SupplierID, UnitPrice
FROM Products
WHERE (ProductName LIKE 'T%' OR ProductID = 46) AND (UnitPrice > 16.00)

/* Provjera za ID 46*/

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE ProductID = 46

/* Varijacija upita iz listinga 6*/

USE Northwind
SELECT ProductID, ProductName, SupplierID, UnitPrice
FROM Products
WHERE (ProductName LIKE 'T%') OR (ProductID = 46 AND UnitPrice > 10.00)

/*Listing 7 i 8
  Napisati upit koji prikazuje proizovde, �ija je cijena po komadu
  izme�u 10 i 20. Upit napisati korsite�i BEATWEEN i logi�ke operatore*/

USE Northwind
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 10 AND 20

USE Northwind
SELECT ProductName, UnitPrice
FROM Products
WHERE (UnitPrice >= 10) AND (UnitPrice <= 20)

/*Listing 9 i 10
  Prikazati samo one dabavlja�e koji su iz Japana ili Italije. Lista treba da sadr�i ime komparnije i dr�avu.
  Upit napisati na dva na�ina: koriste�i IN i logi�ke opratore*/

USE Northwind
SELECT CompanyName, Country
FROM Suppliers
WHERE Country IN ('Japan', 'Italy')

USE Northwind
SELECT CompanyName, Country
FROM Suppliers
WHERE (Country = 'Japan') OR (Country = 'Italy')

/*Listing 11
  Prikazati samo one dobavlja�e koji nemaju unesen broj FAX-a*/
  
USE Northwind
SELECT CompanyName, Fax
FROM Suppliers
WHERE Fax IS NULL
