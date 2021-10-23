#Prints each line of the modifier list to specific players
execute if data storage rocketriders:modifiers split[1] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" ","bold":false},{"nbt":"split[0][]","storage":"rocketriders:modifiers","interpret":true,"separator":{"text":", ","color":"gray"}},{"text":", ","color":"gray"}]
execute if data storage rocketriders:modifiers split[0] unless data storage rocketriders:modifiers split[1] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" ","bold":false},{"nbt":"split[0][]","storage":"rocketriders:modifiers","interpret":true,"separator":{"text":", ","color":"gray"}}]
data remove storage rocketriders:modifiers split[0]
execute if data storage rocketriders:modifiers split[0] run function modifiers:printlist
execute unless data storage rocketriders:modifiers split[0] run data remove storage rocketriders:modifiers split