##Randomized messages for Lobby easter eggs
execute store result score $randomlobby CmdData run random value 0..9
execute if score $randomlobby CmdData matches 0 run tellraw @s ["",{"text":"what does this thing do"}]
execute if score $randomlobby CmdData matches 1 run tellraw @s ["",{"text":"boo"}]
execute if score $randomlobby CmdData matches 2 run tellraw @s ["",{"text":"choo choo"}]
execute if score $randomlobby CmdData matches 3 run tellraw @s ["",{"text":"stop pressing me"}]
execute if score $randomlobby CmdData matches 4 run tellraw @s ["",{"text":"ouch that hurt"}]
execute if score $randomlobby CmdData matches 5 run tellraw @s ["",{"text":"who are you"}]
execute if score $randomlobby CmdData matches 6 run tellraw @s ["",{"text":"explain yourself"}]
execute if score $randomlobby CmdData matches 7 run tellraw @s ["",{"text":"does it ever end"}]
execute if score $randomlobby CmdData matches 8 run tellraw @s ["",{"text":"are we there yet"}]
execute if score $randomlobby CmdData matches 9 run tellraw @s ["",{"text":"ok you can go now"}]