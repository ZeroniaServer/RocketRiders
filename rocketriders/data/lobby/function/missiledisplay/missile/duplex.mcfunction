##Missile Display for Duplex
data merge entity @e[x=0,type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Duplex","color":"dark_purple","bold":true}'}
data merge entity @e[x=0,type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"16 (+4 carts)","color":"white"}]'}
data merge entity @e[x=0,type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"2.0m/s","color":"white"}]'}
item replace entity @e[x=0,type=item_frame,tag=MisDispIF,limit=1] contents with parrot_spawn_egg[enchantment_glint_override=true]

playsound minecraft:entity.generic.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 1

fill 22 202 69 15 206 87 air

place template duplex_blue 18 203 70

fill 22 202 69 15 206 73 moving_piston replace air
fill 22 202 75 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass
fill 22 202 69 15 206 87 white_glazed_terracotta replace blue_glazed_terracotta

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Duplex","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Duplex works like a ShieldBuster but takes a more creative approach. Instead of going through a Shield, it will blow it up and keep on flying!","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Chronos22 & YZEROgame)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}