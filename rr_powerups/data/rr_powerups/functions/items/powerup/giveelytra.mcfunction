#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasElytra run clear @s elytra 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasElytra 0

#Title/giving
execute as @s at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute as @s[scores={HasElytra=1..}] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute as @s[scores={HasElytra=1..}] run tag @s add DelayActionbar
execute as @s[scores={HasElytra=1..}] run scoreboard players set @s actionbardelay 0
execute as @s[scores={HasElytra=1..}] run clear @s elytra
title @s[scores={HasElytra=0}] title ["",{"text":"Elytra ","color":"dark_purple","italic":"true","bold":"true"},{"text":"obtained.","color":"light_purple"}]
title @s[scores={HasElytra=0}] subtitle {"text":"Jump in midair to activate. Low durability!","color":"light_purple","italic":"true"}
replaceitem entity @s armor.chest elytra{HideFlags:4,Enchantments:[{id:binding_curse,lvl:1}],Damage:429,display:{Name:'[{"text":"Elytra","color":"dark_purple","bold":"true"}]',Lore:['{"text":"Useful for short flights.","color":"gray"}']}} 1
tag @e[tag=Selection,type=armor_stand] add givenElytra