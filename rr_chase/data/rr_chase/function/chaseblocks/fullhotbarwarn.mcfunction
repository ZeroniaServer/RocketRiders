##Actionbar notifications
tag @s add DelayActionbar
scoreboard players set @s actionbardelay 0
title @s[tag=fullHotbar] actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noFullHotbarSound] if entity @s[tag=fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=wasFullHotbar] actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noFullHotbarSound] if entity @s[tag=wasFullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1