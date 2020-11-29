##Calculates and announces end game statistics (most missiles spawned, most kills, most deaths)
#Calculates who has the most of each score
tag @a remove flagschamp
execute as @a run scoreboard players operation @s CmdData = @s FlagsCaptured
function everytick:pogger_calculation
tag @a[scores={CmdData=0}] add flagschamp

tag @a remove killschamp
execute as @a run scoreboard players operation @s CmdData = @s kills
function everytick:pogger_calculation
tag @a[scores={CmdData=0}] add killschamp

tag @a remove deathchamp
execute as @a run scoreboard players operation @s CmdData = @s deaths
function everytick:pogger_calculation
tag @a[scores={CmdData=0}] add deathchamp

#Announces who has the most of each score
execute unless entity @a[tag=!flagschamp,tag=!killschamp,tag=!deathchamp] run tellraw @a ["",{"text":"Match Statistics:","color":"dark_green","bold":"true"}]

execute store result score $playercount CmdData if entity @a[tag=flagschamp]
execute if score $playercount CmdData matches 1 if entity @a[tag=flagschamp,scores={FlagsCaptured=2..}] run tellraw @a ["",{"selector":"@a[tag=flagschamp]","color":"none","bold":false},{"text":" is the MVP: ","color":"green"},{"score":{"name":"@a[tag=flagschamp]","objective":"FlagsCaptured"},"color":"dark_green"},{"text":" flags captured!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[tag=flagschamp,scores={FlagsCaptured=2..}] run tellraw @a ["",{"selector":"@a[tag=flagschamp]","color":"none","bold":false},{"text":" are the MVPs: ","color":"green"},{"score":{"name":"@r[tag=flagschamp]","objective":"FlagsCaptured"},"color":"dark_green"},{"text":" flags captured each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[tag=flagschamp,scores={FlagsCaptured=1}] run tellraw @a ["",{"selector":"@a[tag=flagschamp]","color":"none","bold":false},{"text":" is the MVP: ","color":"green"},{"score":{"name":"@a[tag=flagschamp]","objective":"FlagsCaptured"},"color":"dark_green"},{"text":" flag captured!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[tag=flagschamp,scores={FlagsCaptured=1}] run tellraw @a ["",{"selector":"@a[tag=flagschamp]","color":"none","bold":false},{"text":" are the MVPs: ","color":"green"},{"score":{"name":"@r[tag=flagschamp]","objective":"FlagsCaptured"},"color":"dark_green"},{"text":" flag captured each!","color":"green"}]

execute store result score $playercount CmdData if entity @a[tag=killschamp]
execute if score $playercount CmdData matches 1 if entity @a[tag=killschamp,scores={kills=2..}] run tellraw @a ["",{"selector":"@a[tag=killschamp]","color":"none","bold":false},{"text":" is that guy that murders people: ","color":"green"},{"score":{"name":"@a[tag=killschamp]","objective":"kills"},"color":"dark_green"},{"text":" kills!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[tag=killschamp,scores={kills=2..}] run tellraw @a ["",{"selector":"@a[tag=killschamp]","color":"none","bold":false},{"text":" are the guys that murder people: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"kills"},"color":"dark_green"},{"text":" kills each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[tag=killschamp,scores={kills=1}] run tellraw @a ["",{"selector":"@a[tag=killschamp]","color":"none","bold":false},{"text":" is that guy that murdered someone: ","color":"green"},{"score":{"name":"@a[tag=killschamp]","objective":"kills"},"color":"dark_green"},{"text":" kill!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[tag=killschamp,scores={kills=1}] run tellraw @a ["",{"selector":"@a[tag=killschamp]","color":"none","bold":false},{"text":" are the guys that murdered someone: ","color":"green"},{"score":{"name":"@r[tag=killschamp]","objective":"kills"},"color":"dark_green"},{"text":" kill each!","color":"green"}]

execute store result score $playercount CmdData if entity @a[tag=deathchamp]
execute if score $playercount CmdData matches 1 if entity @a[tag=deathchamp,scores={deaths=1}] run tellraw @a ["",{"selector":"@a[tag=deathchamp]","color":"none","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@a[tag=deathchamp]","objective":"deaths"},"color":"dark_green"},{"text":" pathetic death!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[tag=deathchamp,scores={deaths=1}] run tellraw @a ["",{"selector":"@a[tag=deathchamp]","color":"none","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"deaths"},"color":"dark_green"},{"text":" pathetic death each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[tag=deathchamp,scores={deaths=2..}] run tellraw @a ["",{"selector":"@a[tag=deathchamp]","color":"none","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@a[tag=deathchamp]","objective":"deaths"},"color":"dark_green"},{"text":" pathetic deaths!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[tag=deathchamp,scores={deaths=2..}] run tellraw @a ["",{"selector":"@a[tag=deathchamp]","color":"none","bold":false},{"text":" had trouble staying alive: ","color":"green"},{"score":{"name":"@r[tag=deathchamp]","objective":"deaths"},"color":"dark_green"},{"text":" pathetic deaths each!","color":"green"}]

#Resets scores
scoreboard players reset @a CmdData
scoreboard players reset @a FlagsCaptured