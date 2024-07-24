##Gives executor a Splash
#Antidupe check
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!doStacking] store result score @s HasSplash run clear @s lingering_potion[custom_data~{splash:1b}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] run scoreboard players set @s HasSplash 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasSplash=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Splash already obtained.","color":"aqua"}
execute if entity @s[scores={HasSplash=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Splash already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasSplash=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Splash obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasSplash=0},tag=!fullHotbar] lingering_potion[custom_data={splash:1b},custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Splash","color":"gold","bold":true}]',lore=['{"text":"Spawns a brief water source where it","color":"gray"}','{"text":"lands. Used to restart missiles, reduce","color":"gray"}','{"text":"explosions, or break your fall.","color":"gray"}'],potion_contents={potion:"minecraft:water",custom_effects:[{id:"minecraft:saturation",amplifier:0,duration:1,show_particles:0b}]},hide_additional_tooltip={}] 1
give @s[team=Blue,scores={HasSplash=0},tag=!fullHotbar] lingering_potion[custom_data={splash:1b},custom_name='[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Splash","color":"blue","bold":true}]',lore=['{"text":"Spawns a brief water source where it","color":"gray"}','{"text":"lands. Used to restart missiles, reduce","color":"gray"}','{"text":"explosions, or break your fall.","color":"gray"}'],potion_contents={potion:"minecraft:water",custom_effects:[{id:"minecraft:saturation",amplifier:0,duration:1,show_particles:0b}]},hide_additional_tooltip={}] 1

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenSplash