title @s title {"text":"Respawning as:","color":"green"}
title @s subtitle {"text":"Archer","color":"red","bold":true}
execute as @s at @s run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 1

tag @s remove CrusadeNoteKnight
tag @s remove CrusadeNoteMage
tag @s add CrusadeNoteArcher