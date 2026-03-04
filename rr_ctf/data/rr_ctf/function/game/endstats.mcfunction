##Calculates and announces end game statistics (most missiles spawned, most kills, most deaths)
#Calculates who has the most of each score

tag @a[x=0] remove flagschamp
scoreboard players operation #max FlagsCaptured > @a[x=0,scores={FlagsCaptured=1..}] FlagsCaptured
execute as @a[x=0,scores={FlagsCaptured=1..}] if score @s FlagsCaptured = #max FlagsCaptured run tag @s add flagschamp
scoreboard players reset #max FlagsCaptured

tag @a[x=0] remove killschamp
scoreboard players operation #max match_statistic.kills > @a[x=0,scores={match_statistic.kills=1..}] match_statistic.kills
execute as @a[x=0,scores={match_statistic.kills=1..}] if score @s match_statistic.kills = #max match_statistic.kills run tag @s add killschamp
scoreboard players reset #max match_statistic.kills

tag @a[x=0] remove deathchamp
scoreboard players operation #max match_statistic.deaths > @a[x=0,scores={deamatch_statistic.deathsths=1..}] match_statistic.deaths
execute as @a[x=0,scores={match_statistic.deaths=1..}] if score @s match_statistic.deaths = #max match_statistic.deaths run tag @s add deathchamp
scoreboard players reset #max match_statistic.deaths


#Announces who has the most of each score
scoreboard players add $playercount CmdData 0
execute if entity @a[x=0,tag=flagschamp] run scoreboard players add $playercount CmdData 1
execute if entity @a[x=0,tag=killschamp] run scoreboard players add $playercount CmdData 1
execute if entity @a[x=0,tag=deathchamp] run scoreboard players add $playercount CmdData 1
execute if entity @s[tag=YellowWon] run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.main_color"}},"Team ",{score:{name:"#yellow",objective:"text.team_name"}}," Won!"]
execute if entity @s[tag=BlueWon] run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.main_color"}},"Team ",{score:{name:"#blue",objective:"text.team_name"}}," Won!"]
execute if entity @s[tag=BothWon] run tellraw @a[x=0] ["",{"text":"Everyone Wins!","color":"green","bold":true}]
execute if score $playercount CmdData matches 1.. run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"Match Statistics:","color":"dark_green","italic":true}]

execute store result score $playercount CmdData if entity @a[x=0,tag=flagschamp]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=flagschamp,scores={FlagsCaptured=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=flagschamp]","bold":false},{"text":" is the MVP: ","color":"green"},{"score":{"name":"@r[tag=flagschamp]","objective":"FlagsCaptured"},"color":"dark_green"},{"text":" flags captured!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=flagschamp,scores={FlagsCaptured=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=flagschamp]","bold":false},{"text":" are the MVPs: ","color":"green"},{"score":{"name":"@r[tag=flagschamp]","objective":"FlagsCaptured"},"color":"dark_green"},{"text":" flags captured each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=flagschamp,scores={FlagsCaptured=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=flagschamp]","bold":false},{"text":" is the MVP: ","color":"green"},{"score":{"name":"@r[tag=flagschamp]","objective":"FlagsCaptured"},"color":"dark_green"},{"text":" flag captured!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=flagschamp,scores={FlagsCaptured=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=flagschamp]","bold":false},{"text":" are the MVPs: ","color":"green"},{"score":{"name":"@r[tag=flagschamp]","objective":"FlagsCaptured"},"color":"dark_green"},{"text":" flag captured each!","color":"green"}]

execute store result score $playercount CmdData if entity @a[x=0,tag=killschamp]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=killschamp,scores={match_statistic.kills=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=killschamp]","bold":false},{"text":" is that guy that murders people: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"match_statistic.kills"},"color":"dark_green"},{"text":" kills!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=killschamp,scores={match_statistic.kills=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=killschamp]","bold":false},{"text":" are the guys that murder people: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"match_statistic.kills"},"color":"dark_green"},{"text":" kills each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=killschamp,scores={match_statistic.kills=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=killschamp]","bold":false},{"text":" is that guy that murdered someone: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"match_statistic.kills"},"color":"dark_green"},{"text":" kill!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=killschamp,scores={match_statistic.kills=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=killschamp]","bold":false},{"text":" are the guys that murdered someone: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"match_statistic.kills"},"color":"dark_green"},{"text":" kill each!","color":"green"}]

execute store result score $playercount CmdData if entity @a[x=0,tag=deathchamp]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=deathchamp,scores={match_statistic.deaths=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=deathchamp]","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"match_statistic.deaths"},"color":"dark_green"},{"text":" pathetic death!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=deathchamp,scores={match_statistic.deaths=1}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=deathchamp]","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"match_statistic.deaths"},"color":"dark_green"},{"text":" pathetic death each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[x=0,tag=deathchamp,scores={match_statistic.deaths=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=deathchamp]","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"match_statistic.deaths"},"color":"dark_green"},{"text":" pathetic deaths!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[x=0,tag=deathchamp,scores={match_statistic.deaths=2..}] run tellraw @a[x=0] ["",{"text":"| ","bold":true,"color":"dark_gray"},{"text":"- ","color":"green"},{"selector":"@a[x=0,tag=deathchamp]","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"match_statistic.deaths"},"color":"dark_green"},{"text":" pathetic deaths each!","color":"green"}]

#Resets scores
scoreboard players reset @a[x=0] CmdData
scoreboard players reset @a[x=0] FlagsCaptured