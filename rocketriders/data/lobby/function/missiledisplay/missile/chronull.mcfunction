##Missile Display for Chronullifier
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"14","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"2.2m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"green",text:"Chronullifier"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:item/missile/chronullifier

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 0

fill 22 202 69 15 206 87 air

place template game:missile/south/blue/chronullifier 18 203 74

fill 22 202 69 15 206 87 moving_piston replace #custom:lobby_air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Chronullifier","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Chronullifer uses a unique observer engine with the same speed as non-observer engines.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Chronos22 & YZEROgame)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}