##Missile Display for Chronullifier

data merge entity @e[tag=NameDisp,limit=1,type=area_effect_cloud] {CustomName:'{"text":"Chronullifier","color":"green","bold":true}'}
data merge entity @e[tag=TNTDisp,limit=1,type=area_effect_cloud] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"14","color":"white"}]'}
data merge entity @e[tag=SpeedDisp,limit=1,type=area_effect_cloud] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"2.2m/s","color":"white"}]'}
data merge entity @e[tag=MisDispIF,limit=1,type=item_frame] {Item:{id:"minecraft:phantom_spawn_egg",Count:1b}}
data remove entity @e[tag=MisDispIF,limit=1,type=item_frame] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

scoreboard players set $prevpage CmdData 0

fill 22 202 69 15 206 87 air

setblock 18 201 74 minecraft:structure_block{mode:"LOAD",name:"minecraft:chronullifier_blue",posY:2}
setblock 18 201 73 redstone_block
setblock 18 202 74 air
setblock 18 201 73 blue_concrete_powder
setblock 18 201 74 blue_concrete_powder

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Chronullifier","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Chronullifer uses a unique observer engine with the same speed as non-observer engines.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Chronos22 & YZEROgame)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}