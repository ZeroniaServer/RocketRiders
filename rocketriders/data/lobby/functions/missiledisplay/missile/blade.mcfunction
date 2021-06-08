##Missile Display for Blade

data merge entity @e[tag=NameDisp,limit=1,type=area_effect_cloud] {CustomName:'{"text":"Blade","color":"green","bold":true}'}
data merge entity @e[tag=TNTDisp,limit=1,type=area_effect_cloud] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"15","color":"white"}]'}
data merge entity @e[tag=SpeedDisp,limit=1,type=area_effect_cloud] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"1.7m/s","color":"white"}]'}
data merge entity @e[tag=MisDispIF,limit=1,type=item_frame] {Item:{id:"minecraft:husk_spawn_egg",Count:1b}}
data remove entity @e[tag=MisDispIF,limit=1,type=item_frame] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force

scoreboard players set $prevpage CmdData 0

fill 22 202 69 15 206 87 air

setblock 18 201 71 minecraft:structure_block{mode:"LOAD",name:"minecraft:blade_blue",posY:2}
setblock 18 202 71 redstone_block
setblock 18 202 71 air
setblock 18 201 71 blue_concrete_powder

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Blade","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Blade is a sword-shaped missile. Breaking the slime block on the side will drop down 3 bomber TNT below it.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: HolyToiletPaper)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}