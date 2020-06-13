data merge entity @e[tag=NameDisp,limit=1] {CustomName:'{"text":"Juggerbuster","color":"red"}'}
data merge entity @e[tag=TNTDisp,limit=1] {CustomName:'[{"text":"TNT Count: ","color":"dark_green"},{"text":"33","color":"light_purple"}]'}
data merge entity @e[tag=SpeedDisp,limit=1] {CustomName:'[{"text":"Speed: ","color":"dark_green"},{"text":"1.7m/s","color":"light_purple"}]'}

playsound minecraft:entity.generic.explode player @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

data merge block 12 203 78 {Page:1}

fill 22 202 69 15 206 87 air

setblock 18 201 70 minecraft:structure_block{mode:"LOAD",name:"minecraft:juggerbuster_blue",posY:2}
setblock 18 202 70 redstone_block
setblock 18 202 70 air
setblock 18 201 70 blue_concrete_powder


fill 22 202 69 15 206 79 barrier replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass