##Gives executor Arrows
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasArrows run clear @s arrow 0
#Arrows are an exception for stacking in modes that limit arrows
execute if entity @e[tag=Selection,tag=doStacking,tag=!arrowLimit,type=armor_stand] run scoreboard players set @s HasArrows 0
#If player already has a valid amount of arrows then they technically don't have a full hotbar
execute as @s[scores={HasArrows=1..3},tag=fullHotbar] if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] run tag @s remove fullHotbar

#Title/giving
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
execute as @s[scores={HasArrows=..3},tag=!fullHotbar,tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2

#Game tracking
tag @e[tag=Selection,tag=givenArrows,type=armor_stand] add givenArrowsTwice
tag @e[tag=Selection,type=armor_stand] add givenArrows
scoreboard players set @e[tag=Bot,type=armor_stand] botarrowitems 4