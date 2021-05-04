import random
import pandas as pd
import datetime

dates = pd.date_range(start="2021-05-01", periods=30)

plantID = 0

with open('energyData.txt') as file, open("energySold.txt", mode="w") as out:
    for line in file.readlines():
        for date in dates:
            d = date.date()
            #temp = [int(energy) for energy in line.split() if energy.isdigit()]
            #energy_sold = temp.index(3)
            energy_produced = random.randrange(2000*200, 6000*200)
            # 2.43 MW per turbine, average 180-230 turbines, similar power to other green sources
            # 150,000 MWh, 6250000 kW, on average for large hydro plant facilities
            out.write(f"({energy_produced}, {plantID}, {d})\n")
        plantID += 1
