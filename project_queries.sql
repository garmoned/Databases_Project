-- Gets the energy produced per day for a plant for the entire month
Select kilowatts_produced , name , date 
from Plant join Energy_Produced E on Plant.plant_id = E.plant;

-- Gets the total income per day for the entire month
SELECT Energy_sold.date, ROUND(CAST(kilowatts_sold AS DECIMAL(7, 2)) * CAST(dollar_per_kilowatt AS DECIMAL(7, 2)), 2) AS 'total_income_per_day'
FROM Energy_sold;

-- Gets how much money each plant spent on workers per day
SELECT Hours_Worked.date, ROUND(CAST(Hours_Worked.hours_worked AS DECIMAL(7, 2)) * CAST(Role.pay_rate AS DECIMAL(7, 2)), 2) AS 'money_each_plant_spent_per_day'
FROM Hours_Worked
JOIN Role
ON  Employee.employee_id = Hours_Worked.employee	-- Error Code: 1054, unknown column 'Employee.employee_id' in 'on clause'
JOIN Employee
ON Employee.role = Role.role_id ;

-- Gets the hydro plants where average_flowrate is greater than 3.50 m^2/s
SELECT name
FROM Plant join Hydro_Plants H on Plant.plant_id = H.plant
WHERE average_flowrate > 3.50;

-- Gets the solar plants where square_miles is less than 1000
SELECT name 
FROM Plant join Solar_Plants S on Plant.plant_id = S.plant
WHERE square_miles < 1000;

