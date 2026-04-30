##Missile Display for Bullet
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"44","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"2.0m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"dark_purple",text:"Bullet"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:item/missile/bullet

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 1

fill 22 202 69 15 206 87 air

place template game:missile/south/blue/bullet 18 203 72

fill 22 202 69 15 206 73 moving_piston replace #custom:lobby_air
fill 22 202 75 15 206 87 moving_piston replace #custom:lobby_air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass
fill 22 202 69 15 206 87 white_concrete replace blue_concrete

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Bullet","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Bullet makes all missiles look like an A.N.T. With 44 TNT, 12 of which being triggers, you have to be very careful defusing this one!","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Chronos22 & Evtema3)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}