##Calculates and announces end game statistics (most kills, most deaths)
#Calculates who has the most of each score
tag @a[x=0] remove killschamp
scoreboard players operation #max match_statistic.kills > @a[x=0,scores={match_statistic.kills=1..}] match_statistic.kills
execute as @a[x=0,scores={match_statistic.kills=1..}] if score @s match_statistic.kills = #max match_statistic.kills run tag @s add killschamp
scoreboard players reset #max match_statistic.kills

tag @a[x=0] remove deathchamp
scoreboard players operation #max match_statistic.deaths > @a[x=0,scores={match_statistic.deaths=1..}] match_statistic.deaths
execute as @a[x=0,scores={match_statistic.deaths=1..}] if score @s match_statistic.deaths = #max match_statistic.deaths run tag @s add deathchamp
scoreboard players reset #max match_statistic.deaths

#Announces who has the most of each score
scoreboard players add $playercount CmdData 0
execute if entity @a[x=0,tag=killschamp] run scoreboard players add $playercount CmdData 1
execute if entity @a[x=0,tag=deathchamp] run scoreboard players add $playercount CmdData 1
execute if score $playercount CmdData matches 1.. run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Match Statistics:","color":"dark_green","italic":true}]

execute store result score $playercount CmdData if entity @a[x=0,tag=killschamp]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=killschamp,scores={match_statistic.kills=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=killschamp]","bold":false},{"text":" is bloodthirsty: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"match_statistic.kills"},"color":"dark_green"},{"text":" kills!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=killschamp,scores={match_statistic.kills=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=killschamp]","bold":false},{"text":" are bloodthirsty: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"match_statistic.kills"},"color":"dark_green"},{"text":" kills each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=killschamp,scores={match_statistic.kills=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=killschamp]","bold":false},{"text":" is bloodthirsty: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"match_statistic.kills"},"color":"dark_green"},{"text":" kill!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=killschamp,scores={match_statistic.kills=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=killschamp]","bold":false},{"text":" are bloodthirsty: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"match_statistic.kills"},"color":"dark_green"},{"text":" kill each!","color":"green"}]

execute store result score $playercount CmdData if entity @a[x=0,tag=deathchamp]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=deathchamp,scores={match_statistic.deaths=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=deathchamp]","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"match_statistic.deaths"},"color":"dark_green"},{"text":" pathetic death!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=deathchamp,scores={match_statistic.deaths=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=deathchamp]","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"match_statistic.deaths"},"color":"dark_green"},{"text":" pathetic death each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=deathchamp,scores={match_statistic.deaths=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=deathchamp]","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"match_statistic.deaths"},"color":"dark_green"},{"text":" pathetic deaths!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=deathchamp,scores={match_statistic.deaths=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=deathchamp]","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"match_statistic.deaths"},"color":"dark_green"},{"text":" pathetic deaths each!","color":"green"}]

#Resets CmdData score
scoreboard players reset @a[x=0] CmdData
scoreboard players reset $playercount CmdData