import random
import pandas as pd
import datetime

dates = pd.date_range(start="2021-05-01", periods=30)

plantID = 0

# 2.43 MW per turbine, average 180-230 turbines, similar power to other green sources
# 150,000 MWh, 6250000 kW, on average for large hydro plant facilities
with open("energyProduced.txt", mode="w") as produced, open("energySold.txt", mode="w") as sold:
    for plantID in range(1,10):
        for date in dates:
            d = date.date()
            energy_produced = random.randrange(2000 * 200, 6000 * 200)
            energy_sold = energy_produced / 5
            produced.write(f"({energy_produced}, {plantID}, '{d}'),\n")
            for custID in range(1,random.randrange(1,5)):
                energy_price = round(random.uniform(1.0, 10.0), 2)
                sold.write(f"({plantID}, {custID}, '{d}', {energy_sold}, {energy_price}),\n")
    # plants can have multiple customers, and multiple customers can have multiple plants per day

