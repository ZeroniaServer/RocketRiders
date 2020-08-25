##Utility function -- updates parkour leaderboard with new player/time

execute as @s at @s store result score @e[tag=ParkourTime,type=area_effect_cloud,limit=1] bestParkourTime run scoreboard players get @s bestParkourTime
execute as @s at @s run data modify block -31 190 17 Text1 set value '[{"selector":"@p[tag=finishedParkour]"}]'
execute as @s at @s run data modify entity @e[tag=ParkourName,type=area_effect_cloud,limit=1] CustomName set from block -31 190 17 Text1

execute as @s[scores={parkourSecs=..9,parkourMins=..9}] at @s run data modify block -31 190 17 Text2 set value '["",{"text":"0","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourSecs"},"color":"green"}]'
execute as @s[scores={parkourSecs=10..,parkourMins=..9}] at @s run data modify block -31 190 17 Text2 set value '["",{"text":"0","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourSecs"},"color":"green"}]'
execute as @s[scores={parkourSecs=..9,parkourMins=10..}] at @s run data modify block -31 190 17 Text2 set value '["",{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourSecs"},"color":"green"}]'
execute as @s[scores={parkourSecs=10..,parkourMins=10..}] at @s run data modify block -31 190 17 Text2 set value '["",{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourSecs"},"color":"green"}]'

execute as @s at @s run data modify entity @e[tag=ParkourTime,type=area_effect_cloud,limit=1] CustomName set from block -31 190 17 Text2

execute as @s at @s run loot replace entity @e[tag=ParkourPlayer,type=armor_stand,limit=1] armor.head 1 loot lobby:parkourhead