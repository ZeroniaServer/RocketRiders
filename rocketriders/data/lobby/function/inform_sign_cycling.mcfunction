## Runs when a player interacts with the modifiers sign or the game modes sign

execute if predicate rr:has_tutorial run tellraw @s ["",{"text":"<","color":"dark_gray"},{"text":"Tutorial","bold":true,"color":"green"},{"text":"> ","color":"dark_gray"},[{"text":"Click on signs ","color":"gray"},{"translate":"(%s)","with":[{"keybind":"key.use"}],"italic":true},{"text":" to cycle through each setting's options. You can also crouch ","color":"gray"},{"translate":"(%s)","with":[{"keybind":"key.sneak"}],"italic":true}," and click to cycle backwards."]]
execute if predicate rr:has_tutorial at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 0.5 2
