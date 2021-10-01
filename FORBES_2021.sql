
SELECT * 
FROM Forbes_2021..['Forbes-2021-Global-500-Companie$']


--=======================================================================================
-----------EXPLORING THE 500 FORBES_2021 COMPANIES LIST FROM THE HIGHEST SALES TO THE LOWEST
---====================================================================================

SELECT Name, Sales_$, Market_Value_$, Assets_$
FROM Forbes_2021..['Forbes-2021-Global-500-Companie$']
ORDER BY Sales_$ DESC
;



--=============================================================================
-----------TOP 5 COMPANIES ON THE FORBES_2021 LIST WITH THE HIGEST SALES
---============================================================================

SELECT Name, Sales_$
FROM Forbes_2021..['Forbes-2021-Global-500-Companie$']
WHERE Sales_$ >270000000000
ORDER BY Sales_$ DESC
;

--=============================================================================
-----------TOP 5 COMPANIES ON THE FORBES_2021 LIST WITH THE HIGEST MARKET VALUE
---============================================================================

SELECT Name, Market_Value_$
FROM Forbes_2021..['Forbes-2021-Global-500-Companie$']
WHERE Market_Value_$ > 1538800000000
ORDER BY Market_Value_$ DESC
;


--=============================================================================
-----------TOP 5 COMPANIES ON THE FORBES_2021 LIST WITH THE HIGEST PROFIT
---============================================================================

SELECT Name, Profit_$
FROM Forbes_2021..['Forbes-2021-Global-500-Companie$']
WHERE Profit_$ > 42400000000
ORDER BY Profit_$ DESC
;

--=============================================================================
-----------TOP 5 COMPANIES ON THE FORBES_2021 LIST WITH THE HIGEST ASSESET
---============================================================================
SELECT Name, Assets_$
FROM Forbes_2021..['Forbes-2021-Global-500-Companie$']
WHERE Assets_$ > 3731300000000
ORDER BY Assets_$ DESC
;

--=================================================================================================================================
-----COMPARING FACEBOOK, AMAZON, MICROSOFT,BANK OF AMERICA,AGRICULTURAL BANK OF CHINA,SONY,ALIBABA GROUP
-----AND WALMART( SALES,PROFITS,ASSETS AND MARKET VALUES)
---===============================================================================================================================

SELECT Name,Sales_$, Profit_$, Assets_$, Market_Value_$
FROM Forbes_2021..['Forbes-2021-Global-500-Companie$']
WHERE name = 'Facebook' OR Name = 'Amazon' OR Name = 'Microsoft' 
			OR Name = 'Bank of america' OR Name = 'Agricultural bank of china'
			OR Name = 'Walmart' OR Name = 'Alibaba Group' OR Name = 'Sony'
GROUP BY Name,Sales_$, Profit_$, Assets_$, Market_Value_$
;
