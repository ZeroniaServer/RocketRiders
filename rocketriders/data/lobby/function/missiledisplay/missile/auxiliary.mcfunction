##Missile Display for Auxiliary
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"25","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"1.7m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"red",text:"Auxiliary"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:item/missile/auxiliary

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 1

fill 22 202 69 15 206 87 air

place template game:missile/south/blue/auxiliary 18 203 73

fill 22 202 69 15 206 87 moving_piston replace #custom:lobby_air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Heavy] ","color":"red","bold":true},{"text":"Auxiliary","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Auxiliary is a heavy missile. This missile has 6 triggers in it, making it risky to defuse.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Evtema3)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}