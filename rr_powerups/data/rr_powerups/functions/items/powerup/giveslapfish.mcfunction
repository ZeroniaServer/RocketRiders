title @s[scores={HasSlapFish=1..},tag=!fullHotbar] actionbar {"text":"Slap Fish already obtained.","color":"light_purple"}
title @s[scores={HasSlapFish=0},tag=!fullHotbar] actionbar {"text":"Slap Fish obtained.","color":"light_purple"}
give @s[scores={HasSlapFish=0},tag=!fullHotbar] cooked_salmon{display:{Name:'{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Evtema3 and YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Use to slap your enemies away!","color":"gray"}','{"text":"Only good for one use.","color":"gray"}']},Enchantments:[{id:"minecraft:knockback",lvl:3s}]} 1
tag @e[tag=Selection] add givenFish