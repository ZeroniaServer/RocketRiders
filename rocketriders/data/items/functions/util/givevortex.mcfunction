##Gives executor a Vortex
title @s[scores={HasVortex=1..},tag=!fullHotbar] actionbar {"text":"Vortex already obtained","color":"aqua"}
title @s[scores={HasVortex=0},tag=!fullHotbar] actionbar {"text":"Vortex obtained","color":"aqua"}
give @s[team=Yellow,scores={HasVortex=0},tag=!fullHotbar] egg{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Vortex","color":"gold","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"A sky-mine. Blows up when enemies get","color":"gray"}','{"text":"close, missiles pass through it, or it","color":"gray"}','{"text":"gets shot by arrows. Can chain react!","color":"gray"}']}} 1
give @s[team=Blue,scores={HasVortex=0},tag=!fullHotbar] egg{CustomModelData:1,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":"true"},{"text":"Vortex","color":"blue","bold":"true"}]',Lore:['{"text":"Made by:","color":"gray"}','{"text":"YZEROgame","color":"gray"}','{"text":" ","color":"gray"}','{"text":"A sky-mine. Blows up when enemies get","color":"gray"}','{"text":"close, missiles pass through it, or it","color":"gray"}','{"text":"gets shot by arrows. Can chain react!","color":"gray"}']}} 1

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenVortex