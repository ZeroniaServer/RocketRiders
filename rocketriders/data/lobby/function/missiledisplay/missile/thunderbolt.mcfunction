##Missile Display for Thunderbolt
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"15","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"3.3m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"yellow",text:"Thunderbolt"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:missile/lightning/thunderbolt

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 1

fill 22 202 69 15 206 87 air

place template game:thunderbolt_blue 18 203 73

fill 22 202 69 15 206 87 moving_piston replace #custom:lobby_air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Lightning] ","color":"yellow","bold":true},{"text":"Thunderbolt","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"Breaking too much TNT may stop this missile, but its length and 2x2 form factor make it easier to cruise on to the enemy base.","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: Rubix_One)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}