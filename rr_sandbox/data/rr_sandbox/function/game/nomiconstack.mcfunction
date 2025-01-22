scoreboard players operation @s sbstackamt = @s nomiconstack
tellraw @s [{"translate":"You will now receive %s of each item from your Rocket-nomicon.","color":"dark_green","with":[{"score":{"name":"@s","objective":"nomiconstack"},"color":"green","bold":true}]}]

scoreboard players set @s nomiconstack 0