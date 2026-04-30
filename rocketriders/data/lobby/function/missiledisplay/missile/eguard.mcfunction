##Missile Display for Elder Guardian
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"9","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"1.7m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"green",text:"Elder Guardian"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:item/missile/elder_guardian

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 0

fill 22 202 69 15 206 87 air

place template game:missile/south/blue/elder_guardian 18 203 73

fill 22 202 69 15 206 87 moving_piston replace #custom:lobby_air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Elder Guardian","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"An upgrade from the original Guardian in Missile Wars, the Elder Guardian is bigger and covers the TNT better.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Rubix_One)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}