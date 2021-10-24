##Prints each line of the Modifier list to specific players
execute if data storage rocketriders:modifiers line[1] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" ","bold":false},{"nbt":"line[0][]","storage":"rocketriders:modifiers","interpret":true,"separator":{"text":", ","color":"gray"}},{"text":", ","color":"gray"}]
execute if data storage rocketriders:modifiers line[0] unless data storage rocketriders:modifiers line[1] run tellraw @a[tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" ","bold":false},{"nbt":"line[0][]","storage":"rocketriders:modifiers","interpret":true,"separator":{"text":", ","color":"gray"}}]
data remove storage rocketriders:modifiers line[0]
execute if data storage rocketriders:modifiers line[0] run function modifiers:printlist
execute unless data storage rocketriders:modifiers line[0] run data remove storage rocketriders:modifiers line