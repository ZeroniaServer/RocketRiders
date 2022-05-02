##Missile Display for Hurricane
data merge entity @e[type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Hurricane","color":"yellow","bold":true}'}
data merge entity @e[type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"18","color":"white"}]'}
data merge entity @e[type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"3.3m/s","color":"white"}]'}
data merge entity @e[type=item_frame,tag=MisDispIF,limit=1] {Item:{id:"minecraft:drowned_spawn_egg",Count:1b}}
data remove entity @e[type=item_frame,tag=MisDispIF,limit=1] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 1

fill 22 202 69 15 206 87 air

setblock 18 201 74 minecraft:structure_block{mode:"LOAD",name:"minecraft:hurricane_blue",posY:2}
setblock 18 202 74 redstone_block
setblock 18 202 74 air
setblock 18 201 74 blue_concrete_powder

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Lightning] ","color":"yellow","bold":true},{"text":"Hurricane","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Hurricane bears much resemblance to the Lightning, but with more TNT and a tight design. It might be harder to get on this one.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: HolyToiletPaper)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}