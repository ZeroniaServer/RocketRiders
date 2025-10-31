## Runs when a player interacts with the modifiers sign or the gamemodes sign

tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"Tutorial","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},[{"text":"Right-click the ","color":"gray"},{"color":"dark_aqua","text":"Modifier"}," or ",{"color":"dark_purple","text":"Gamemode"}," signs to cycle through each option. You can also hold ",{"keybind":"key.sneak","italic":true}," and right-click to cycle backwards."]]
execute at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 0.5 2
