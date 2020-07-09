##Missile Display for Hypersonic

data merge entity @e[tag=NameDisp,limit=1,type=area_effect_cloud] {CustomName:'{"text":"Hypersonic","color":"dark_purple","bold":"true"}'}
data merge entity @e[tag=TNTDisp,limit=1,type=area_effect_cloud] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":"true"},{"text":"4","color":"white"}]'}
data merge entity @e[tag=SpeedDisp,limit=1,type=area_effect_cloud] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":"true"},{"text":"4.4m/s","color":"white"}]'}
data merge entity @e[tag=MisDispIF,limit=1,type=item_frame] {Item:{id:"minecraft:turtle_spawn_egg",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7},Count:1b}}

playsound minecraft:entity.generic.explode player @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

data merge block 12 203 78 {Page:1}

fill 22 202 69 15 206 87 air

setblock 18 201 74 minecraft:structure_block{mode:"LOAD",name:"minecraft:hypersonic_blue",posY:2}
setblock 18 202 74 redstone_block
setblock 18 202 74 air
setblock 18 201 74 blue_concrete_powder

fill 22 202 69 15 206 87 barrier replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass
fill 22 202 69 15 206 87 white_glazed_terracotta replace blue_glazed_terracotta

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Special] ","color":"dark_purple","bold":"true"},{"text":"Hypersonic","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Hypersonic is the fastest missile in the game. It might be very hard to get on this one!","color":"gray","italic":"true"}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: IndigoLaser)","color":"gray","italic":"true","bold":"false"}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}