
DROP DATABASE IF EXISTS project;
CREATE DATABASE project;

use project;

CREATE TABLE `Plant` (
  `plant_id` int UNIQUE PRIMARY KEY,
  `supervisor` int,
  `name` varchar(255)
);

-- CREATE TABLE `Employee` (
--   `employee_id` int UNIQUE PRIMARY KEY,
--   `first_name` varchar(255),
--   `last_name` varchar(255),
--   `works_at` int,
--   `managed_by` int,
--   `role` smallint
-- );

-- CREATE TABLE `Client` (
--   `client_id` int UNIQUE PRIMARY KEY,
--   `name` varchar(255),
--   `located_in` varchar(255)
-- );

-- CREATE TABLE `Maintenance` (
--   `started_on` date,
--   `ended_on` date,
--   `description` varchar(255),
--   `total_cost` float,
--   `supervisor` int,
--   `performed_at` int
-- );

-- CREATE TABLE `Energy_Produced` (
--   `kilowatts_produced` float,
--   `plant` int,
--   `date` date UNIQUE
-- );

-- CREATE TABLE `Energy_sold` (
--   `plant` int,
--   `client` int,
--   `date` date,
--   `kilowatts_sold` bigint,
--   `dollar_per_kilowatt` float
-- );

-- CREATE TABLE `Hours_Worked` (
--   `employee` int,
--   `hours_worked` float,
--   `date` date
-- );

-- CREATE TABLE `Role` (
--   `role_id` smallint UNIQUE PRIMARY KEY,
--   `pay_rate` float,
--   `name` varchar(255)
-- );

-- CREATE TABLE `Solar_Plants` (
--   `plant` int,
--   `paneling` float,
--   `square_miles` float
-- );

-- CREATE TABLE `Wind_Plants` (
--   `plant` int,
--   `percent_winterized` float,
--   `number_of_windmills` int
-- );

-- CREATE TABLE `Hydro_Plants` (
--   `plant` int,
--   `average_flowrate` float,
--   `body_of_water` varchar(255)
-- );

-- ALTER TABLE `Plant` ADD FOREIGN KEY (`supervisor`) REFERENCES `Employee` (`employee_id`);

-- ALTER TABLE `Employee` ADD FOREIGN KEY (`works_at`) REFERENCES `Plant` (`plant_id`);

-- ALTER TABLE `Employee` ADD FOREIGN KEY (`managed_by`) REFERENCES `Employee` (`employee_id`);

-- ALTER TABLE `Employee` ADD FOREIGN KEY (`role`) REFERENCES `Role` (`role_id`);

-- ALTER TABLE `Maintenance` ADD FOREIGN KEY (`supervisor`) REFERENCES `Employee` (`employee_id`);

-- ALTER TABLE `Maintenance` ADD FOREIGN KEY (`performed_at`) REFERENCES `Plant` (`plant_id`);

-- ALTER TABLE `Energy_Produced` ADD FOREIGN KEY (`plant`) REFERENCES `Plant` (`plant_id`);

-- ALTER TABLE `Energy_sold` ADD FOREIGN KEY (`plant`) REFERENCES `Plant` (`plant_id`);

-- ALTER TABLE `Energy_sold` ADD FOREIGN KEY (`client`) REFERENCES `Client` (`client_id`);

-- ALTER TABLE `Hours_Worked` ADD FOREIGN KEY (`employee`) REFERENCES `Employee` (`employee_id`);

-- ALTER TABLE `Solar_Plants` ADD FOREIGN KEY (`plant`) REFERENCES `Plant` (`plant_id`);

-- ALTER TABLE `Wind_Plants` ADD FOREIGN KEY (`plant`) REFERENCES `Plant` (`plant_id`);

-- ALTER TABLE `Hydro_Plants` ADD FOREIGN KEY (`plant`) REFERENCES `Plant` (`plant_id`);
