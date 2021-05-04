-- Gets the energy produced per day for a plant for the entire month
Select kilowatts_produced , name , date 
from Plant join Energy_Produced E on Plant.plant_id = E.plant;

-- Gets the total income per day for the entire month
SELECT Energy_sold.date, ROUND(CAST(kilowatts_sold AS DECIMAL(7, 2)) * CAST(dollar_per_kilowatt AS DECIMAL(7, 2)), 2) AS 'total_income_per_day'
FROM Energy_sold;

-- Gets how much money each plant spent on workers per day


-- Gets the hydro plants where average_flowrate is greater than 3.50 m^2/s


-- Gets the solar plants where square_miles is less than 1000

Error Code: 1062. Duplicate entry '2021-05-01' for key 'date'
