#broken elytra replacing
execute as @a[x=0,team=Blue] at @s if items entity @s armor.chest elytra if predicate custom:canopy_nearyellow run tag @s add BreakEly
execute as @a[x=0,team=Yellow] at @s if items entity @s armor.chest elytra if predicate custom:canopy_nearblue run tag @s add BreakEly

execute as @a[x=0,team=Blue] if items entity @s armor.chest elytra[damage=6] run tag @s add BreakEly
execute as @a[x=0,team=Yellow] if items entity @s armor.chest elytra[damage=6] run tag @s add BreakEly

execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] run title @s title ["",{"text":" "}]
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] run title @s subtitle ["",{"text":"Elytra ","color":"dark_red","italic":true,"bold":true},{"text":"expired!","color":"red"}]
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.6 1
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 1.2
tag @a[x=0,tag=BreakEly] add BreakElyMsg
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team,tag=BreakEly,predicate=custom:not_falling] run function custom:unequip_elytra
tag @a[x=0,tag=BreakElyMsg,predicate=custom:not_falling] remove BreakEly
tag @a[x=0,tag=BreakElyMsg,predicate=custom:not_falling] remove BreakElyMsg

#broken trident clearing
clear @a[x=0,team=Blue] trident[damage=8]
clear @a[x=0,team=Yellow] trident[damage=8]

#trident auto riptide
execute as @a[x=0,predicate=custom:has_trident_in_inventory,predicate=custom:on_blue_or_yellow_team] run function rr_powerups:everytick/auto_riptide

#trident antidupe
tag @e[x=0,type=trident,nbt={inGround:1b}] add return
execute as @e[x=0,type=trident,tag=return] store result score @s playerUUID run data get entity @s Owner[0]
execute if entity @s[tag=!doStacking] as @e[x=0,type=trident,tag=return] at @s run function rr_powerups:everytick/trident_antidupe
tag @a[x=0,tag=tridentChecked] remove tridentChecked

#slap fish
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function rr_powerups:everytick/slap_fish

#infinity saber
scoreboard players reset @a[x=0,tag=Infinity,predicate=!custom:on_blue_or_yellow_team] infinity
tag @a[x=0,tag=Infinity,predicate=!custom:on_blue_or_yellow_team] remove Infinity
scoreboard players add @a[x=0,tag=Infinity,predicate=custom:on_blue_or_yellow_team] infinity 1
execute as @a[x=0,tag=Infinity,predicate=custom:on_blue_or_yellow_team,scores={infinity=600..}] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1.5
execute as @a[x=0,tag=Infinity,team=Blue,scores={infinity=600..}] run function rr_powerups:items/saber/normal/blue
execute as @a[x=0,tag=Infinity,team=Yellow,scores={infinity=600..}] run function rr_powerups:items/saber/normal/yellow
# execute as @a[x=0,team=Yellow,tag=Infinity,scores={infinity=600..}] run loot give @s loot items:misc/shooting_saber
# execute as @a[x=0,team=Blue,tag=Infinity,scores={infinity=600..}] run loot give @s loot items:misc/shooting_saber
title @a[x=0,tag=Infinity,predicate=custom:on_blue_or_yellow_team,scores={infinity=600..}] actionbar {"text":"Infinity Saber expired.","color":"red"}
tag @a[x=0,tag=Infinity,predicate=custom:on_blue_or_yellow_team,scores={infinity=600..}] add DelayActionbar
tag @a[x=0,tag=Infinity,predicate=custom:on_blue_or_yellow_team,scores={infinity=600..}] remove Infinity
scoreboard players reset @a[x=0,predicate=custom:on_blue_or_yellow_team,scores={infinity=600..}] infinity