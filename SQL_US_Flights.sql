-- 1. Quantitat de registres de la taula de vols:
SELECT COUNT(flightID) FROM Flights; 

-- 2. Retard promig de sortida i arribada segons l’aeroport origen
SELECT Origin, 
AVG(ArrDelay) AS "prom_arribades", 
AVG(DepDelay) AS "prom_sortides" 
FROM Flights GROUP BY Origin
ORDER BY Origin ASC; 

-- 3. Retard promig d’arribada dels vols, per mesos, anys i segons l’aeroport origen.
SELECT Origin, colYear, colMonth, 
AVG(ArrDelay) AS "prom_arribades"
FROM Flights GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth ASC; 

-- 4. Retard promig d’arribada dels vols, per mesos, anys i segons l’aeroport origen 
SELECT USAirports.City, Flights.colYear, Flights.colMonth, 
AVG(Flights.ArrDelay) AS "prom_arribades"
FROM Flights
INNER JOIN USAirports
ON Flights.Origin = USAirports.IATA
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth ASC; 

-- 5. Les companyies amb més vols cancelats, per mesos i any.
SELECT UniqueCarrier, colYear, colMonth, 
COUNT(Cancelled) AS "total_cancelled"
FROM Flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY 4 DESC;

-- 6. L’identificador dels 10 avions que més distància han recorregut fent vols.
SELECT *
    FROM (
            SELECT TailNum, SUM(Distance) AS 'totalDistance'
              FROM Flights
          GROUP BY TailNum
          ORDER BY 2 DESC 
          ) AS S
   LIMIT 12;

-- 7. Companyies amb el seu retard promig només d’aquelles les quals els 
--    seus vols arriben al seu destí amb un retràs promig major de 10 minuts.
SELECT UniqueCarrier, AVG(ArrDelay) AS "avgDelay"
FROM Flights
WHERE ArrDelay > 10
GROUP BY UniqueCarrier
ORDER BY 2 DESC;

