title @s title {"text":"Respawning as:","color":"green"}
title @s subtitle {"text":"Mage","color":"dark_purple","bold":true}
execute as @s at @s run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 2

tag @s remove CrusadeNoteKnight
tag @s remove CrusadeNoteArcher
tag @s add CrusadeNoteMage