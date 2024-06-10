##Missile Display for Hurricane
data merge entity @e[x=0,type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"Hurricane","color":"yellow","bold":true}'}
data merge entity @e[x=0,type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"18","color":"white"}]'}
data merge entity @e[x=0,type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"3.3m/s","color":"white"}]'}
item replace entity @e[x=0,type=item_frame,tag=MisDispIF,limit=1] contents with drowned_spawn_egg

playsound minecraft:entity.generic.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 1

fill 22 202 69 15 206 87 air

place template hurricane_blue 18 203 74

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Lightning] ","color":"yellow","bold":true},{"text":"Hurricane","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Hurricane bears much resemblance to the Lightning, but with more TNT and a tight design. It might be harder to get on this one.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: HolyToiletPaper)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}