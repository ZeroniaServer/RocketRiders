#Antidupe check
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=!doStacking] store result score @s HasLavaSplash run clear @s lingering_potion[custom_data~{lavasplash:1b}] 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasLavaSplash 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasLavaSplash=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Lava Splash already obtained.","color":"light_purple"}
execute if entity @s[scores={HasLavaSplash=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Lava Splash already obtained.","color":"light_purple"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasLavaSplash=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Lava Splash obtained.","color":"light_purple"}
give @s[team=Yellow,scores={HasLavaSplash=0},tag=!fullHotbar] minecraft:lingering_potion[custom_data={lavasplash:1b},custom_name='[{"text":"[Utility] ","color":"dark_purple","bold":true},{"text":"Lava Splash","color":"gold","bold":true}]',lore=['{"text":"Spawns a brief lava source where it","color":"gray"}','{"text":"lands. Used to burn enemies or break","color":"gray"}','{"text":"your fall in a dumb way.","color":"gray"}'],enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:0b},potion_contents={potion:"minecraft:awkward",custom_color:16747545},hide_additional_tooltip={}] 1
give @s[team=Blue,scores={HasLavaSplash=0},tag=!fullHotbar] minecraft:lingering_potion[custom_data={lavasplash:1b},custom_name='[{"text":"[Utility] ","color":"dark_purple","bold":true},{"text":"Lava Splash","color":"blue","bold":true}]',lore=['{"text":"Spawns a brief lava source where it","color":"gray"}','{"text":"lands. Used to burn enemies or break","color":"gray"}','{"text":"your fall in a dumb way.","color":"gray"}'],enchantments={levels:{"minecraft:unbreaking":1},show_in_tooltip:0b},potion_contents={potion:"minecraft:awkward",custom_color:16747545},hide_additional_tooltip={}] 1
tag @e[x=0,type=armor_stand,tag=Selection,tag=tetrisTime] add givenLavaSplash