title @s title {"text":"Respawning as:","color":"green"}
title @s subtitle {"text":"Knight","color":"dark_green","bold":true}
execute as @s at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 1.3

tag @s remove CrusadeNoteMage
tag @s remove CrusadeNoteArcher
tag @s add CrusadeNoteKnight