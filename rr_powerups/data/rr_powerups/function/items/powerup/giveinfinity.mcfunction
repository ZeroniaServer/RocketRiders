title @s[tag=Infinity] actionbar [{"text":"Infinity Saber timer reset to ","color":"light_purple"},{"text":"30 seconds.","color":"red"}]
tag @s[tag=Infinity] add DelayActionbar
scoreboard players set @s[tag=Infinity] actionbardelay 0
title @s[tag=!Infinity] title [{"text":" "}]
title @s[tag=!Infinity] subtitle ["",{"text":"Infinity Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts for ","color":"light_purple","italic":true},{"text":"30 seconds.","color":"red"}]
clear @s[tag=!Infinity] bow
give @s[tag=!Infinity] minecraft:bow[custom_name='{"translate":"Infinity Saber","color":"dark_purple","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:5,infinity:1}]
tag @s[tag=!Infinity] add needsArrow
tag @s[tag=needsArrow] add Infinity
execute if entity @s[tag=needsArrow] store result score @s HasArrows run clear @s arrow 0
execute if entity @s[tag=needsArrow,scores={HasArrows=0}] as @e[x=0,type=item,nbt={Item:{id:"minecraft:arrow"}}] run function rr_powerups:items/deductarrow
tag @s[tag=needsArrow,tag=!itemDeducted,scores={HasArrows=0}] add DelayActionbar
execute if entity @s[tag=needsArrow,scores={HasArrows=0}] run function items:util/givearrows
execute if entity @s[tag=needsArrow] as @e[x=0,type=item,nbt={Item:{id:"minecraft:bow"}}] run function rr_powerups:items/killinfinitysaber
tag @s remove needsArrow
tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenInfinity
scoreboard players set $infinity PowerupDisplay 30
scoreboard players set $infinity powerupcount 0
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5