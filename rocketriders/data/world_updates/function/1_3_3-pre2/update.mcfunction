scoreboard objectives add last_arena_team dummy
execute as @a[scores={was_on_arena_team=1..3}] run scoreboard players operation @s last_arena_team = @s was_on_arena_team
scoreboard objectives remove was_on_arena_team

data remove storage rocketriders:gamerules list
data remove storage rocketriders:items id_to_loot_table_map

scoreboard objectives remove splashtick

setblock -37 212 142 minecraft:oak_wall_sign[facing=north]{front_text:{color:"yellow",has_glowing_text:true,messages:["","hey!","get back to work!",""]}} strict

setblock -37 213 16 minecraft:dark_oak_wall_sign[facing=west]{} strict
setblock -36 213 140 minecraft:dark_oak_wall_sign[facing=east]{} strict
