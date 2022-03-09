summon marker -64 191 78 {Tags:["ServerMode","SneakyChase"]}
scoreboard players set @e[type=marker,tag=SneakyChase] RNGmax 1000
execute as @e[type=marker,tag=SneakyChase] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=SneakyChase] run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @e[type=marker,tag=SneakyChase,scores={RNGscore=69}] run summon marker -64 191 78 {Tags:["ServerMode","Set6","ServermodeSet6","Set","ChaseMode"],CustomName:"\"Chase Mode\""}
execute as @e[type=marker,tag=SneakyChase,scores={RNGscore=69}] run summon marker -64 191 78 {Tags:["ServerMode","Maps","ServermodeSet6","RandomMap"],CustomName:'"Randomized map"'}
kill @e[type=marker,tag=SneakyChase]