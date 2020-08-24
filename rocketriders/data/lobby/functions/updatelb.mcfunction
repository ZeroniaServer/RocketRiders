execute store result score @e[tag=ParkourTime] bestParkourTime run scoreboard players get @s bestParkourTime
data modify block -31 190 17 Text1 set value '[{"selector":"@p"}]'
data modify entity @e[tag=ParkourName,limit=1] CustomName set from block -31 190 17 Text1

execute as @s[scores={parkourSecs=..9,parkourMins=..9}] run data modify block -31 190 17 Text2 set value '["",{"text":"0","color":"green"},{"score":{"name":"@p","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@p","objective":"parkourSecs"},"color":"green"}]'
execute as @s[scores={parkourSecs=10..,parkourMins=..9}] run data modify block -31 190 17 Text2 set value '["",{"text":"0","color":"green"},{"score":{"name":"@p","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@p","objective":"parkourSecs"},"color":"green"}]'
execute as @s[scores={parkourSecs=..9,parkourMins=10..}] run data modify block -31 190 17 Text2 set value '["",{"score":{"name":"@p","objective":"parkourMins"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"@p","objective":"parkourSecs"},"color":"green"}]'
execute as @s[scores={parkourSecs=10..,parkourMins=10..}] run data modify block -31 190 17 Text2 set value '["",{"score":{"name":"@p","objective":"parkourMins"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"@p","objective":"parkourSecs"},"color":"green"}]'

data modify entity @e[tag=ParkourTime,limit=1] CustomName set from block -31 190 17 Text2

loot replace entity @e[tag=ParkourPlayer,limit=1] armor.head 1 loot lobby:parkourhead