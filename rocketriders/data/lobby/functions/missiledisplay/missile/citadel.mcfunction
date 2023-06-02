##Missile Display for Citadel
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Citadel","color":"green","bold":true}'}
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"16","color":"white"}]'}
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"2.0m/s","color":"white"}]'}
data merge entity @e[predicate=custom:indimension,type=item_frame,tag=MisDispIF,limit=1] {Item:{id:"minecraft:wandering_trader_spawn_egg",Count:1b}}
data remove entity @e[predicate=custom:indimension,type=item_frame,tag=MisDispIF,limit=1] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a[predicate=custom:indimension] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[predicate=custom:indimension,scores={hideParticles=0},predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 0

fill 22 202 69 15 206 87 air

place template citadel_blue 18 203 73

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass
fill 22 202 69 15 206 87 birch_trapdoor[facing=north,half=bottom,open=true] replace spruce_trapdoor

execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Citadel","color":"white"}]
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":"The Citadel is good for surprise attacks. You can climb inside the missile using the trapdoor on top of it.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":"(Made by: Chronos22 & YZEROgame)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":""}