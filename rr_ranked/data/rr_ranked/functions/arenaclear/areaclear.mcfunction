#remove join cancel from joinpads
tag @e[tag=Selection] add GameStarted
tp @a[team=Blue] 12 64 -66 0 0
tp @a[team=Yellow] 12 64 66 180 0
clear @a[team=Blue]
clear @a[team=Yellow]

scoreboard players set @s[scores={count=1..}] RandomItem -3
scoreboard players operation @s[scores={count=1..}] RandomItem += @s[scores={count=1..}] MaxItemTime

execute as @a[team=Blue] run function rr_ranked:game/givegear
execute as @a[team=Yellow] run function rr_ranked:game/givegear