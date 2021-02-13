execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s[tag=!Infinity] HasArrows run clear @s arrow 0
execute if entity @e[tag=Selection,tag=doStacking,tag=!arrowLimit,type=armor_stand] run scoreboard players set @s[tag=!Infinity] HasArrows 0
title @s[tag=Infinity] actionbar {"text":"Infinity Saber already obtained.","color":"light_purple"}
tag @s[tag=Infinity] add DelayActionbar
scoreboard players set @s[tag=Infinity] actionbardelay 0
title @s[tag=!Infinity] title ["",{"text":"Infinity Saber ","color":"dark_purple","italic":"true","bold":"true"}]
title @s[tag=!Infinity] subtitle {"text":"Shoot infinite arrows! Lasts until death.","color":"light_purple","italic":"true"}
give @s[scores={HasArrows=0},tag=!fullHotbar,tag=fullOffhand,tag=!Infinity] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 1
replaceitem entity @s[scores={HasArrows=0},tag=!fullHotbar,tag=!fullOffhand,tag=!Infinity] weapon.offhand arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 1
execute as @s[scores={HasArrows=0},tag=!fullHotbar,tag=!fullOffhand,tag=!Infinity] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
clear @s[tag=!Infinity] bow
tag @s[tag=!Infinity] add Infinity
tag @e[tag=Selection,type=armor_stand] add givenInfinity