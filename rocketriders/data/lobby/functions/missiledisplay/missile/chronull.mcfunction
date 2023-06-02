##Missile Display for Chronullifier
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Chronullifier","color":"green","bold":true}'}
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"14","color":"white"}]'}
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"2.2m/s","color":"white"}]'}
data merge entity @e[predicate=custom:indimension,type=item_frame,tag=MisDispIF,limit=1] {Item:{id:"minecraft:phantom_spawn_egg",Count:1b}}
data remove entity @e[predicate=custom:indimension,type=item_frame,tag=MisDispIF,limit=1] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a[predicate=custom:indimension] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[predicate=custom:indimension,tag=!hideParticles,predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 0

fill 22 202 69 15 206 87 air

place template chronullifier_blue 18 203 74

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Chronullifier","color":"white"}]
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":"The Chronullifer uses a unique observer engine with the same speed as non-observer engines.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":"(Made by: Chronos22 & YZEROgame)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":""}