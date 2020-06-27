##Gives executor Arrows
title @s[scores={HasArrows=4..},tag=!fullHotbar] actionbar {"text":"Arrows already obtained.","color":"aqua"}
title @s[scores={HasArrows=..3},tag=!fullHotbar] actionbar {"text":"Arrows obtained.","color":"aqua"}
#Tries to give enough arrows to refill up to 4
give @s[scores={HasArrows=0},tag=!fullHotbar,tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 4
give @s[scores={HasArrows=1},tag=!fullHotbar,tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 3
give @s[scores={HasArrows=2},tag=!fullHotbar,tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 2
give @s[scores={HasArrows=3},tag=!fullHotbar,tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 1
#If possible, places arrows in offhand
replaceitem entity @s[scores={HasArrows=0},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 4
replaceitem entity @s[scores={HasArrows=1},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 3
replaceitem entity @s[scores={HasArrows=2},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 2
replaceitem entity @s[scores={HasArrows=3},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 1

#Game tracking
tag @e[tag=Selection,tag=givenArrows] add givenArrowsTwice
tag @e[tag=Selection] add givenArrows
scoreboard players set @e[tag=Bot] botarrowitems 4