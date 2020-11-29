##Calculates and announces end game statistics (most missiles spawned, most kills, most deaths)
#Counts missiles spawned
execute as @a[team=Blue] run function everytick:missile_count
execute as @a[team=Yellow] run function everytick:missile_count

#Calculates who has the most of each score
tag @a remove spawnchamp
execute as @a run scoreboard players operation @s CmdData = @s MissilesSpawned
function everytick:pogger_calculation
tag @a[scores={CmdData=0}] add spawnchamp

tag @a remove killschamp
execute as @a run scoreboard players operation @s CmdData = @s kills
function everytick:pogger_calculation
tag @a[scores={CmdData=0}] add killschamp

tag @a remove deathchamp
execute as @a run scoreboard players operation @s CmdData = @s deaths
function everytick:pogger_calculation
tag @a[scores={CmdData=0}] add deathchamp

#Announces who has the most of each score
execute unless entity @a[tag=!spawnchamp,tag=!killschamp,tag=!deathchamp] run tellraw @a ["",{"text":"Match Statistics:","color":"dark_green","bold":"true"}]

execute store result score $playercount CmdData if entity @a[tag=spawnchamp]
execute if score $playercount CmdData matches 1 if entity @a[tag=spawnchamp,scores={MissilesSpawned=2..}] run tellraw @a ["",{"selector":"@a[tag=spawnchamp]","color":"none","bold":false},{"text":" is the MVP: ","color":"green"},{"score":{"name":"@a[tag=spawnchamp]","objective":"MissilesSpawned"},"color":"dark_green"},{"text":" missiles spawned!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[tag=spawnchamp,scores={MissilesSpawned=2..}] run tellraw @a ["",{"selector":"@a[tag=spawnchamp]","color":"none","bold":false},{"text":" are the MVPs: ","color":"green"},{"score":{"name":"@r[tag=spawnchamp]","objective":"MissilesSpawned"},"color":"dark_green"},{"text":" missiles spawned each!","color":"green"}]
execute if score $playercount CmdData matches 1 if entity @a[tag=spawnchamp,scores={MissilesSpawned=1}] run tellraw @a ["",{"selector":"@a[tag=spawnchamp]","color":"none","bold":false},{"text":" is the MVP: ","color":"green"},{"score":{"name":"@a[tag=spawnchamp]","objective":"MissilesSpawned"},"color":"dark_green"},{"text":" missile spawned!","color":"green"}]
execute if score $playercount CmdData matches 2.. if entity @a[tag=spawnchamp,scores={MissilesSpawned=1}] run tellraw @a ["",{"selector":"@a[tag=spawnchamp]","color":"none","bold":false},{"text":" are the MVPs: ","color":"green"},{"score":{"name":"@r[tag=spawnchamp]","objective":"MissilesSpawned"},"color":"dark_green"},{"text":" missile spawned each!","color":"green"}]

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

#Resets CmdData score
scoreboard players reset @a CmdData