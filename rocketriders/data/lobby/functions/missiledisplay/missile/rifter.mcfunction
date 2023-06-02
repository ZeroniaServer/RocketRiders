##Missile Display for Rifter
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Rifter","color":"red","bold":true}'}
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"34","color":"white"}]'}
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"2.0m/s","color":"white"}]'}
data merge entity @e[predicate=custom:indimension,type=item_frame,tag=MisDispIF,limit=1] {Item:{id:"minecraft:salmon_spawn_egg",Count:1b}}
data remove entity @e[predicate=custom:indimension,type=item_frame,tag=MisDispIF,limit=1] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a[predicate=custom:indimension] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[predicate=custom:indimension,scores={hideParticles=0},predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 1

fill 22 202 69 15 206 87 air

place template rifter_blue 18 203 71

fill 22 202 69 15 206 79 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] [{"text":"[Heavy] ","color":"red","bold":true},{"text":"Rifter","color":"white"}]
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":"The Rifter is an observer-engine missile with plenty of TNT to tear a rift in the enemy base.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":"(Made by: YZEROgame, Chronos22, & 69thAmendment)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":""}