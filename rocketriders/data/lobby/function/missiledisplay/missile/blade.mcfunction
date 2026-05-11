##Missile Display for Blade
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"15","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"1.7m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"green",text:"Blade"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:item/missile/blade

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 0

fill 22 202 69 15 206 87 light[level=15] strict
game:asset/missile/blade/display 18 203 71 none none 1 0 strict

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Blade","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Blade is a sword-shaped missile. Breaking the slime block on the side will drop down 3 bomber TNT below it.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: HolyToiletPaper)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}