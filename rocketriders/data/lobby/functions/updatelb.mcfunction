execute as @s store result score @e[tag=ParkourTime] bestParkourTime run scoreboard players get @s bestParkourTime
execute as @s at @s run data modify block -31 190 17 Text1 set value '[{"selector":"@p"}]'
execute as @s at @s run data modify entity @e[tag=ParkourName,limit=1] CustomName set from block -31 190 17 Text1

execute as @s at @s run data modify block -31 190 17 Text2 set value '["",{"score":{"name":"@p","objective":"bestParkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@p","objective":"bestParkourSecs"},"color":"green"}]'
execute as @s run data modify entity @e[tag=ParkourTime,limit=1] CustomName set from block -31 190 17 Text2

execute as @s run loot replace entity @e[tag=ParkourPlayer,limit=1] armor.head 1 loot lobby:parkourhead