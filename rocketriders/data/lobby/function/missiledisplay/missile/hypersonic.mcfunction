##Missile Display for Hypersonic
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"6","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"4.4m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"dark_purple",text:"Hypersonic"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:missile/special/hypersonic

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 1

fill 22 202 69 15 206 87 air strict
place template game:missile/south/white/hypersonic 18 203 74 none none 1 0 strict
fill 22 202 69 15 206 87 light[level=15] replace #custom:lobby_air strict

fill 19 203 78 20 203 78 tnt
setblock 19 205 78 tnt

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Hypersonic","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Hypersonic is the fastest missile in the game. It might be tricky to ride this one!","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: IndigoLaser)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}