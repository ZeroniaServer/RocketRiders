##Missile Display for Broadsword
data merge entity @e[x=0,type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Broadsword","color":"dark_purple","bold":true}'}
data merge entity @e[x=0,type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"23","color":"white"}]'}
data merge entity @e[x=0,type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"3.3m/s","color":"white"}]'}
data merge entity @e[x=0,type=item_frame,tag=MisDispIF,limit=1] {Item:{id:"minecraft:magma_cube_spawn_egg",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:7},Count:1b}}

playsound minecraft:entity.generic.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 1

fill 22 202 69 15 206 87 air

place template broadsword_blue 18 203 73

#Extra for Broadsword trigger
setblock 20 204 74 observer[facing=south,powered=true]
setblock 20 204 73 tnt

fill 22 202 69 15 206 73 moving_piston replace air
fill 22 202 75 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass
fill 22 202 69 15 206 87 white_glazed_terracotta replace blue_glazed_terracotta

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Broadsword","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Broadsword is a fast and powerful missile that lights lots of TNT on impact. It's like three Swords combined!","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: IndigoLaser)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}