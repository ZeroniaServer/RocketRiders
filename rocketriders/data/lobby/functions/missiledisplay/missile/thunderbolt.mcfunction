##Missile Display for Thunderbolt
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Thunderbolt","color":"yellow","bold":true}'}
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"15","color":"white"}]'}
data merge entity @e[predicate=custom:indimension,type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"3.3m/s","color":"white"}]'}
data merge entity @e[predicate=custom:indimension,type=item_frame,tag=MisDispIF,limit=1] {Item:{id:"minecraft:vex_spawn_egg",Count:1b}}
data remove entity @e[predicate=custom:indimension,type=item_frame,tag=MisDispIF,limit=1] Item.tag.Enchantments

playsound minecraft:entity.generic.explode master @a[predicate=custom:indimension] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[predicate=custom:indimension,scores={hideParticles=0},predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 1

fill 22 202 69 15 206 87 air

place template thunderbolt_blue 18 203 73

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] [{"text":"[Lightning] ","color":"yellow","bold":true},{"text":"Thunderbolt","color":"white"}]
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":"Breaking too much TNT may stop this missile, but its length and 2x2 form factor make it easier to cruise on to the enemy base.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":"(Made by: Rubix_One)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[predicate=custom:indimension,distance=..5] {"text":""}