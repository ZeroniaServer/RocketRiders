title @s[team=Yellow,scores={HasElytra=1..}] actionbar {"text":"Elytra already obtained.","color":"aqua"}
title @s[team=Yellow,scores={HasElytra=0}] actionbar {"text":"Elytra obtained.","color":"aqua"}
replaceitem entity @s[team=Yellow,scores={HasElytra=0}] armor.chest elytra{HideFlags:7,Enchantments:[{id:binding_curse,lvl:1}],Damage:430,display:{Name:'[{"text":"Elytra","color":"dark_purple","bold":"true"}]'}} 1

title @s[team=Blue,scores={HasElytra=1..}] actionbar {"text":"Elytra already obtained.","color":"aqua"}
title @s[team=Blue,scores={HasElytra=0}] actionbar {"text":"Elytra obtained.","color":"aqua"}
replaceitem entity @s[team=Blue,scores={HasElytra=0}] armor.chest elytra{HideFlags:7,Enchantments:[{id:binding_curse,lvl:1}],Damage:430,display:{Name:'[{"text":"Elytra","color":"dark_purple","bold":"true"}]'}} 1