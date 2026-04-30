##Missile Display for Broadsword
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.body] text set value ["",{bold:true,color:"dark_green",text:"TNT Count: "},"23","\n\n",{bold:true,color:"dark_green",text:"Speed: "},"3.3m/s"]
data modify entity @e[limit=1,x=0,type=text_display,tag=missile_display_text.title] text set value {bold:true,color:"dark_purple",text:"Broadsword"}
loot replace entity @e[limit=1,x=0,type=item_display,tag=missile_display_text.icon] contents loot items:item/missile/broadsword

playsound minecraft:entity.explode master @a[x=0] 19 204 78 0.5 1.75
particle minecraft:explosion_emitter 19 204 78 1 1 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=!custom:in_arena]

scoreboard players set $previous_page var 1

fill 22 202 69 15 206 87 air

place template game:missile/south/blue/broadsword 18 203 73

#Extra for Broadsword trigger
setblock 20 204 74 observer[facing=south,powered=true]
setblock 20 204 73 tnt

fill 22 202 69 15 206 73 moving_piston replace #custom:lobby_air
fill 22 202 75 15 206 87 moving_piston replace #custom:lobby_air
fill 22 202 69 15 206 87 white_stained_glass replace blue_stained_glass
fill 22 202 69 15 206 87 white_glazed_terracotta replace blue_glazed_terracotta

execute positioned 12 203 78 run tellraw @a[distance=..5] [{"text":"[Special] ","color":"dark_purple","bold":true},{"text":"Broadsword","color":"white"}]
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"The Broadsword is a fast and powerful missile that lights lots of TNT on impact. It's like three Swords combined!","color":"gray","italic":true}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":"(Made by: IndigoLaser)","color":"gray","italic":true,"bold":false}
execute positioned 12 203 78 run tellraw @a[distance=..5] {"text":""}