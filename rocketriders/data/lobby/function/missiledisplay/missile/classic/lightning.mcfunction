##Missile Display for Lightning
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"12","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"3.3m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"aqua",text:"Lightning"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:item/missile/classic/lightning

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 2

fill 22 202 69 15 206 87 light[level=15] strict
place template game:asset/missile/classic/lightning/display 18 203 74 none none 1 0 strict

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Classic] ","color":"aqua","bold":true},{"text":"Lightning","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"Fast speed missile.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Cubehamster)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}