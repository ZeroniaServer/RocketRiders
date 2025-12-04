## Runs when a player interacts with the modifiers sign or the gamemodes sign

execute if predicate rr:has_tutorial run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"Tutorial","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},[{"text":"Right-click signs to cycle through each setting's options. You can also hold ","color":"gray"},{"keybind":"key.sneak","italic":true}," and right-click to cycle backwards."]]
execute if predicate rr:has_tutorial at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 0.5 2
