##Utility function -- updates parkour leaderboard with new player/time

execute at @s store result score @e[type=area_effect_cloud,tag=ParkourTime,limit=1] bestParkourTime run scoreboard players get @s bestParkourTime
execute at @s run data modify block -31 190 17 Text1 set value '[{"selector":"@p[tag=finishedParkour]"}]'
execute at @s run data modify entity @e[type=area_effect_cloud,tag=ParkourName,limit=1] CustomName set from block -31 190 17 Text1

execute if entity @s[scores={parkourSecs=..9,parkourMins=..9}] at @s run data modify block -31 190 17 Text2 set value '["",{"text":"0","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[scores={parkourSecs=10..,parkourMins=..9}] at @s run data modify block -31 190 17 Text2 set value '["",{"text":"0","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[scores={parkourSecs=..9,parkourMins=10..}] at @s run data modify block -31 190 17 Text2 set value '["",{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourDeci2"},"color":"green"}]'
execute if entity @s[scores={parkourSecs=10..,parkourMins=10..}] at @s run data modify block -31 190 17 Text2 set value '["",{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourSecs"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourDeci"},"color":"green"},{"score":{"name":"@p[tag=finishedParkour]","objective":"parkourDeci2"},"color":"green"}]'

execute at @s run data modify entity @e[type=area_effect_cloud,tag=ParkourTime,limit=1] CustomName set from block -31 190 17 Text2

execute at @s run loot replace entity @e[type=armor_stand,tag=ParkourPlayer,limit=1] armor.head 1 loot lobby:parkourhead

tellraw @a ["",{"selector":"@s"},{"text":" now holds the Parkour Record!","color":"dark_green"}]