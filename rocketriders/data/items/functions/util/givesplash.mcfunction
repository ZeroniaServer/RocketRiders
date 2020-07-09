##Gives executor a Splash
title @s[scores={HasSplash=1..},tag=!fullHotbar] actionbar {"text":"Splash already obtained.","color":"aqua"}
title @s[scores={HasSplash=0},tag=!fullHotbar] actionbar {"text":"Splash obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasSplash=0},tag=!fullHotbar] lingering_potion{Potion:'minecraft:water',display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Splash","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Spawns a brief water source where it","color":"gray"}','{"text":"lands. Used to restart missiles, reduce","color":"gray"}','{"text":"explosions, or break your fall.","color":"gray"}']},HideFlags:63} 1
give @s[team=Blue,scores={HasSplash=0},tag=!fullHotbar] lingering_potion{Potion:'minecraft:water',display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Splash","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Spawns a brief water source where it","color":"gray"}','{"text":"lands. Used to restart missiles, reduce","color":"gray"}','{"text":"explosions, or break your fall.","color":"gray"}']},HideFlags:63} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenSplash