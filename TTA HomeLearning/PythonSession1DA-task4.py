'''A motorbike costs £2000 and loses 10% of its value every year. Using a
loop, print the value of the bike every following year until it falls below
£1000'''

initial_cost = 2000
print(f"Initial cost of a motorbike is {initial_cost}")
final_cost = initial_cost
year = 1
while final_cost != 1000:
    year = year+1
    final_cost = final_cost - ((final_cost*10)/100)
    if final_cost < 1000:
        break
    print(f"Cost of the bike decreased to {round(final_cost)} in year: {year}")
