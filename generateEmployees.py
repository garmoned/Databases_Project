#this file will generate random employee data for each plant

import random

employee_id = 0 

namesFile = open("./names.txt",mode="r")
employeeDataFile = open("./employeeData.txt", mode="w")

names = []

for name in namesFile.readlines():
    names.append(name.strip())

for plant_id in range(1,10):

    
    managed_by = None

    for employee_offset in range (0,5):

        role = random.randint(1,2)

        #if the employee is a 
        #the first employees will
        #be managers
        if(employee_offset == 0 ):
            role = 3

        works_at = plant_id
        #get random name
        first_name = random.choice(names)
        last_name = random.choice(names)


        sqlValues = f'({employee_id},"{first_name}","{last_name}",{plant_id},{managed_by} ,{role})'

        if(managed_by == None):
            sqlValues = f'({employee_id},"{first_name}","{last_name}",{plant_id},NULL ,{role})'


        employeeDataFile.write(sqlValues + "\n")

        if(employee_offset == 0 ):
            managed_by = employee_id

        employee_id += 1 

      
        
        