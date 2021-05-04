
import random
import pandas as pd
import datetime


dates = pd.date_range(start = "2021-05-01" , periods= 30)

employeeID = 0

with open('employeeData.txt') as f , open("employeeWork.txt",mode="w") as o:
    for line in f.readlines():
        for date in dates:
            d = date.date()
            hours = random.randrange(4,8)
            o.write(f"({employeeID}, {hours}, {d})\n")
        employeeID += 1 
    