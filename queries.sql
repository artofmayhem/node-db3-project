-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
## Call: 
SELECT p.productname, c.categoryname 
    FROM Product p
    JOIN Category c
    ON p.categoryid = c.id

## Return:
Chai	Beverages
Chang	Beverages
Aniseed Syrup	Condiments
Chef Anton's Cajun Seasoning	Condiments
Chef Anton's Gumbo Mix	Condiments
Grandma's Boysenberry Spread	Condiments
Uncle Bob's Organic Dried Pears	Produce
Northwoods Cranberry Sauce	Condiments
Mishi Kobe Niku	Meat/Poultry
Ikura	Seafood
Queso Cabrales	Dairy Products
Queso Manchego La Pastora	Dairy Products
Konbu	Seafood
Tofu	Produce
Genen Shouyu	Condiments
Pavlova	Confections
Alice Mutton	Meat/Poultry
Carnarvon Tigers	Seafood
Teatime Chocolate Biscuits	Confections
Sir Rodney's Marmalade	Confections
Sir Rodney's Scones	Confections
Gustaf's Knäckebröd	Grains/Cereals
Tunnbröd	Grains/Cereals
Guaraná Fantástica	Beverages
NuNuCa Nuß-Nougat-Creme	Confections
Gumbär Gummibärchen	Confections
Schoggi Schokolade	Confections
Rössle Sauerkraut	Produce
Thüringer Rostbratwurst	Meat/Poultry
Nord-Ost Matjeshering	Seafood
Gorgonzola Telino	Dairy Products
Mascarpone Fabioli	Dairy Products
Geitost	Dairy Products
Sasquatch Ale	Beverages
Steeleye Stout	Beverages
Inlagd Sill	Seafood
Gravad lax	Seafood
Côte de Blaye	Beverages
Chartreuse verte	Beverages
Boston Crab Meat	Seafood
Jack's New England Clam Chowder	Seafood
Singaporean Hokkien Fried Mee	Grains/Cereals
Ipoh Coffee	Beverages
Gula Malacca	Condiments
Rogede sild	Seafood
Spegesild	Seafood
Zaanse koeken	Confections
Chocolade	Confections
Maxilaku	Confections
Valkoinen suklaa	Confections
Manjimup Dried Apples	Produce
Filo Mix	Grains/Cereals
Perth Pasties	Meat/Poultry
Tourtière	Meat/Poultry
Pâté chinois	Meat/Poultry
Gnocchi di nonna Alice	Grains/Cereals
Ravioli Angelo	Grains/Cereals
Escargots de Bourgogne	Seafood
Raclette Courdavault	Dairy Products
Camembert Pierrot	Dairy Products
Sirop d'érable	Condiments
Tarte au sucre	Confections
Vegie-spread	Condiments
Wimmers gute Semmelknödel	Grains/Cereals
Louisiana Fiery Hot Pepper Sauce	Condiments
Louisiana Hot Spiced Okra	Condiments
Laughing Lumberjack Lager	Beverages
Scottish Longbreads	Confections
Gudbrandsdalsost	Dairy Products
Outback Lager	Beverages
Flotemysost	Dairy Products
Mozzarella di Giovanni	Dairy Products
Röd Kaviar	Seafood
Longlife Tofu	Produce
Rhönbräu Klosterbier	Beverages
Lakkalikööri	Beverages
Original Frankfurter grüne Soße	Condiments


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records. 
    Order without plural threw syntax error as sql was looking for order by
    ## Call

         Select o.id, s.companyname
JOIN Shipper s
ON o.shipvia = s.id
WHERE o.OrderDate < "2012-8-9";


    ## Return
        Result:
Number of Records: 196
OrderID	ShipperName
10248	Federal Shipping
10249	Speedy Express
10250	United Package
10251	Speedy Express
10252	United Package

abbreviated return

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
##Call
SELECT o.orderid, p.productname
FROM OrderDetail o
JOIN Product p
ON o.productid = p.id
WHERE o.orderid = 10251

Result:
Number of Records: 3
OrderID	ProductName
10251	Gustaf's Knäckebröd
10251	Ravioli Angelo
10251	Louisiana Fiery Hot Pepper Sauce

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

## Logic From Orders join customername at o.customerid also join e.lastname @ o.employeeid

## Call
     SELECT o.id, c.companyname, e.lastname
    FROM Orders o
    JOIN Customer c
    ON o.customerid = c.id
    JOIN Employee e
    ON o.employeeid = e.id


## Abbreviated Return
    Result:
Number of Records: 16789
id	companyname	lastname
10248	Vins et alcools Chevalier	Buchanan
10249	Toms Spezialitäten	Suyama
10250	Hanari Carnes	Peacock
10251	Victuailles en stock	Leverling
10252	Suprêmes délices	Peacock
10253	Hanari Carnes	Leverling
10254	Chop-suey Chinese	Buchanan
10255	Richter Supermarkt	Dodsworth
10256	Wellington Importadora	Leverling
10257	HILARION-Abastos	Peacock
10258	Ernst Handel	Davolio
10259	Centro comercial Moctezuma	Peacock
10260	Ottilies Käseladen	Peacock

