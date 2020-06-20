data merge entity @e[tag=NameDisp,limit=1] {CustomName:'{"text":"Rifter","color":"red","bold":"true"}'}
data merge entity @e[tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":"true"},{"text":"34","color":"white"}]'}
data merge entity @e[tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":"true"},{"text":"2.0m/s","color":"white"}]'}
data merge entity @e[tag=MisDispIF,limit=1] {Item:{id:"minecraft:salmon_spawn_egg",Count:1b}}

playsound minecraft:entity.generic.explode player @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

data merge block 12 203 78 {Page:1}

fill 22 202 69 15 206 87 air

setblock 18 201 71 minecraft:structure_block{mode:"LOAD",name:"minecraft:rifter_blue",posY:2}
setblock 18 202 71 redstone_block
setblock 18 202 71 air
setblock 18 201 71 blue_concrete_powder

fill 22 202 69 15 206 79 barrier replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Heavy] ","color":"red","bold":"true"},{"text":"Rifter","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Rifter is an observer engine missile with plenty of TNT to blow up a portal.","color":"gray","italic":"true"}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: YZEROgame, Carsorian, & Chronos22Gamer)","color":"gray","italic":"true","bold":"false"}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}