title @s[scores={HasArrows=1..},tag=!fullHotbar] actionbar {"text":"Arrows already obtained.","color":"aqua"}
title @s[scores={HasArrows=0},tag=!fullHotbar] actionbar {"text":"Arrows obtained.","color":"aqua"}
give @s[team=Yellow,scores={HasArrows=0},tag=!fullHotbar] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 4
give @s[team=Blue,scores={HasArrows=0},tag=!fullHotbar] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 4

tag @e[tag=Selection,tag=givenArrows] add givenArrowsTwice
tag @e[tag=Selection] add givenArrows

scoreboard players set @e[tag=Bot] botarrowitems 4