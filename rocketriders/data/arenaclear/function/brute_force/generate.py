chunks: tuple[float,float] = []
for x in range(-11, 11 +1):
    for y in range(-11, 10 +1):
        chunks.append((x,y))

chunks.sort(key=(lambda x: x[0]*x[0] + x[1]*x[1] + (0 if (-3<=x[0]<=3 and -6<=x[1]<=5) else 100)))
for i, chunk in enumerate(chunks):
    if not (-3<=chunk[0]<=3 and -6<=chunk[1]<=5):
        index_of_interest = i
        break

for i, chunk in enumerate(chunks):
    x, y = chunk
    with open(f"air/{i}.mcfunction","w") as file:
        file.write(
            f"fill {max(-163,16*x-1)} -64 {max(-175,16*y-1)} {min(187,16*x+15+1)} 180 {min(175,16*y+15+1)} air strict\n"
        )
        if i <= index_of_interest:
            file.write(
                f"scoreboard players set $chunk_clear_progress global {max(1,int(50*(i+1)/index_of_interest))}\n"
            )
        else:
            file.write(
                f"scoreboard players set $chunk_clear_progress global {50+int(50*(i-index_of_interest+1)/(len(chunks)-index_of_interest))}\n"
            )

with open("start.mcfunction","w") as file:
    file.write(
        "scoreboard players set $chunk_clear_progress global 0\n"
    )
    for i in range(len(chunks)):
        file.write(
            f"schedule function arenaclear:brute_force/air/{i} {i+1}t\n"
        )

with open("stop.mcfunction","w") as file:
    file.write(
        "scoreboard players set $chunk_clear_progress global 100\n"
    )
    for i in range(len(chunks)):
        file.write(
            f"schedule clear arenaclear:brute_force/air/{i}\n"
        )

print("Done")
