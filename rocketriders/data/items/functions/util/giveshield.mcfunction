title @s[scores={HasShield=1..},tag=!fullHotbar] actionbar {"text":"Shield already obtained.","color":"aqua"}
title @s[scores={HasShield=0},tag=!fullHotbar] actionbar {"text":"Shield obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasShield=0},tag=!fullHotbar] snowball{CustomModelData:2,display:{Name:'[{"text":"Deploy: ","color":"light_purple","bold":"true"},{"text":"Shield","color":"gold","bold":"true"}]'}} 1
give @s[team=Blue,scores={HasShield=0},tag=!fullHotbar] snowball{CustomModelData:1,display:{Name:'[{"text":"Deploy: ","color":"light_purple","bold":"true"},{"text":"Shield","color":"blue","bold":"true"}]'}} 1