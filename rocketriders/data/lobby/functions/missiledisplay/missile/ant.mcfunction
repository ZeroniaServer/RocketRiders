##Missile Display for A.N.T

data merge entity @e[x=0,type=area_effect_cloud,tag=NameDisp,limit=1] {CustomName:'{"text":"A.N.T.","color":"green","bold":true}'}
data merge entity @e[x=0,type=area_effect_cloud,tag=TNTDisp,limit=1] {CustomName:'["",{"text":"TNT Count: ","color":"dark_green","bold":true},{"text":"2","color":"white"}]'}
data merge entity @e[x=0,type=area_effect_cloud,tag=SpeedDisp,limit=1] {CustomName:'["",{"text":"Speed: ","color":"dark_green","bold":true},{"text":"2.2m/s","color":"white"}]'}
item replace entity @e[x=0,type=item_frame,tag=MisDispIF,limit=1] contents with bat_spawn_egg

playsound minecraft:entity.generic.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

scoreboard players set $prevpage CmdData 0

fill 22 202 69 15 206 87 air

place template ant_blue 18 203 75

fill 22 202 69 15 206 87 moving_piston replace air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"A.N.T.","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The A.N.T. stands for Almost No TNT. It is one of the smallest functional missiles, made with only two TNT blocks.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Evtema3)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}