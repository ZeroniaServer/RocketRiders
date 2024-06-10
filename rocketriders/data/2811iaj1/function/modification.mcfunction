##Notify player about Modification Room
tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"Tutorial","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},{"text":"Welcome to the Modification Room. In here you can completely customize your game experience by changing the gamemode you play, apply fun modifiers, enable and disable certain items and customize the bases for your next game. Click the \"Confirm Settings\" sign to confirm the game settings and start a match.","color":"gray"}]
execute at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 0.5 2