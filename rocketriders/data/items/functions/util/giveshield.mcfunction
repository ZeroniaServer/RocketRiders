##Gives executor a Shield
title @s[scores={HasShield=1..},tag=!fullHotbar] actionbar {"text":"Shield already obtained.","color":"aqua"}
title @s[scores={HasShield=0},tag=!fullHotbar] actionbar {"text":"Shield obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasShield=0},tag=!fullHotbar] snowball{CustomModelData:2,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Shield","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Zeronia Team","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Throw to spawn a glass Shield.","color":"gray"}','{"text":"This is able to stop most missiles.","color":"gray"}','{"text":" ","color":"gray"}']}} 1
give @s[team=Blue,scores={HasShield=0},tag=!fullHotbar] snowball{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Shield","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"Zeronia Team","color":"gray"}','{"text":" ","color":"gray"}','{"text":"Throw to spawn a glass Shield.","color":"gray"}','{"text":"This is able to stop most missiles.","color":"gray"}','{"text":" ","color":"gray"}']}} 1

#Game tracking
tag @e[tag=Selection,tag=givenShield] add givenShieldTwice
tag @e[tag=Selection] add givenShield