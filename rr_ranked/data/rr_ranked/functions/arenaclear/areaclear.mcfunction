#remove join cancel from joinpads
tag @e[tag=Selection] add GameStarted
tp @a[team=Blue] 12 64 -66 0 0
tp @a[team=Yellow] 12 64 66 180 0
clear @a[team=Blue]
clear @a[team=Yellow]

scoreboard players set @e[tag=Selection] RandomItem 400

execute as @a[team=Blue] run function game:gearblue
execute as @a[team=Yellow] run function game:gearyellow