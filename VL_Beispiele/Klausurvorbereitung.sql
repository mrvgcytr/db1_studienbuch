-- 1. SQL Queries
-- Basis: Beispieldatenbank OEHR

-- 1.1  Basics & Subqueries 

-- 1.1.1 Ermitteln Sie Vor- und Nachnamen der Kunden aus der Tabelle "OEHR_CUSTOMERS"
SELECT cust_first_name, cust_last_name 
FROM oehr_customers;

-- 1.1.2 Ermitteln Sie PLZ, Vor- und Nachnamen der Kunden aus der Tabelle "OEHR_CUSTOMERS", sortiert nach absteigender PLZ
SELECT postal_code, cust_first_name, cust_last_name 
FROM oehr_customers
ORDER BY postal_code DESC;

-- 1.1.3 In der Tabelle OEHR_CUSTOMERS ist das Kreditlimit pro Kunden hinterlegt. Ermitteln Sie den durchschnittlichen Wert für "CREDIT_LIMIT" der Kunden 
SELECT AVG(credit_limit) 
FROM oehr_customers;

-- 1.1.4 Das Management überlegt sich das Kreditlimit um 30% zu erhöhen. Hiervon sollen aber nur Kundne ptrofitieren, die weniger als den Durchschnittswert verfügen. Bestimmen Sie den Vor- & Nachnamen, das bisherige Kreditlimit und das erhöhte Kreditlimit der betroffenen Kunden an. 
SELECT cust_first_name, cust_last_name, credit_limit, credit_limit*1.3 
FROM oehr_customers
WHERE credit_limit < (
    SELECT AVG(credit_limit) 
    FROM oehr_customers;
)


-- 1.1.5 Gruppieren Sie gleiche Kreditlimits und geben Sie die Anzahl an Kunden für jede Gruppe an.     
SELECT credit_limit, COUNT(*) 
FROM oehr_customers
GROUP BY credit_limit
ORDER BY 2 ASC;


-- 1.1.6 Gib pro "STATE_PROVINCE" die Anzahl an Kunden an und sortiere nach absteigender Kundenanzahl 
SELECT state_province, COUNT(*) 
FROM oehr_customers
GROUP BY state_province
ORDER BY 2 
