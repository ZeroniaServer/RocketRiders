data merge entity @e[tag=NameDisp,limit=1] {CustomName:'{"text":"Lifter","color":"green"}'}
data merge entity @e[tag=TNTDisp,limit=1] {CustomName:'[{"text":"TNT Count: ","color":"dark_green"},{"text":"8","color":"light_purple"}]'}
data merge entity @e[tag=SpeedDisp,limit=1] {CustomName:'[{"text":"Speed: ","color":"dark_green"},{"text":"2.0m/s","color":"light_purple"}]'}
data merge entity @e[tag=MisDispIF,limit=1] {Item:{id:"minecraft:dolphin_spawn_egg",Count:1b}}

playsound minecraft:entity.generic.explode player @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

data merge block 12 203 78 {Page:0}

fill 22 202 69 15 206 87 air

setblock 18 201 75 minecraft:structure_block{mode:"LOAD",name:"minecraft:lifter_blue",posY:2}
setblock 18 202 75 redstone_block
setblock 18 202 75 air
setblock 18 201 75 blue_concrete_powder


fill 22 202 69 15 206 87 barrier replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass