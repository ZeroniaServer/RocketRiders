##Missile Display for Elder Guardian
data merge entity @e[type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Elder Guardian","color":"green","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"9","color":"white"}]'}
data merge entity @e[type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"1.7m/s","color":"white"}]'}
data merge entity @e[type=item_frame,tag=MisDispIF,limit=1] {Item:{id:"minecraft:elder_guardian_spawn_egg",Count:1b}}
data remove entity @e[type=item_frame,tag=MisDispIF,limit=1] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

scoreboard players set $prevpage CmdData 0

fill 22 202 69 15 206 87 air

setblock 18 201 73 minecraft:structure_block{mode:"LOAD",name:"minecraft:elderguard_blue",posY:2}
setblock 18 202 73 redstone_block
setblock 18 202 73 air
setblock 18 201 73 blue_concrete_powder

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Elder Guardian","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"An upgrade from the original Guardian in Missile Wars, the Elder Guardian is bigger and covers the TNT better.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Rubix_One)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}