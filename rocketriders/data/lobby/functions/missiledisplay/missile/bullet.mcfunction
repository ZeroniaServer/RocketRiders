data merge entity @e[tag=NameDisp,limit=1] {CustomName:'{"text":"Bullet","color":"dark_purple"}'}
data merge entity @e[tag=TNTDisp,limit=1] {CustomName:'[{"text":"TNT Count: ","color":"dark_green"},{"text":"45","color":"light_purple"}]'}
data merge entity @e[tag=SpeedDisp,limit=1] {CustomName:'[{"text":"Speed: ","color":"dark_green"},{"text":"2.0m/s","color":"light_purple"}]'}

playsound minecraft:entity.generic.explode player @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

data merge block 12 203 78 {Page:1}

fill 22 202 69 15 206 87 air

setblock 18 201 71 minecraft:structure_block{mode:"LOAD",name:"minecraft:bullet_blue",posY:2}
setblock 18 202 71 redstone_block
setblock 18 202 71 air
setblock 18 201 71 blue_concrete_powder

fill 22 202 69 15 206 73 barrier replace air
fill 22 202 75 15 206 87 barrier replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass