#scoreboards
scoreboard objectives setdisplay sidebar.team.gold RoundsWon
scoreboard objectives setdisplay sidebar.team.blue RoundsWon
scoreboard objectives setdisplay sidebar.team.dark_gray RoundsWon

#leave midgame
function rr_duel:game/leavemidgame

#tracking players and locking join pads
tag @a[predicate=custom:indimension,team=Blue] add InRanked
tag @a[predicate=custom:indimension,team=Yellow] add InRanked

function game:cancelyellow
function game:cancelblue

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function items:minutemix

#Spawnpoints
execute as @a[predicate=custom:indimension,team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[predicate=custom:indimension,team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#win
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BlueWon] unless block 11 38 -74 nether_portal run function rr_duel:game/winyellow
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BlueWon] unless block 13 38 -74 nether_portal run function rr_duel:game/winyellow

execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!YellowWon] unless block 13 38 74 nether_portal run function rr_duel:game/winblue
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!YellowWon] unless block 11 38 74 nether_portal run function rr_duel:game/winblue

#arena clear cheesing
execute if entity @e[type=marker,tag=PlacerClear] run tag @s remove CriteriaTrue
tag @e[type=marker,tag=PlacerClear] add BasePlaced
tag @e[type=marker,tag=PlacerClear] add Cleared

scoreboard players add Blue: RoundsWon 0
scoreboard players add Yellow: RoundsWon 0

##forfeit
#initial condition - use tag NOFORFEITS to disable forfeits
execute unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. if entity @a[predicate=custom:indimension,team=Yellow] unless entity @a[predicate=custom:indimension,team=Blue] run tag @s add TimeOut
execute unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[predicate=custom:indimension,team=Yellow] if entity @a[predicate=custom:indimension,team=Blue] run tag @s add TimeOut
execute if entity @s[tag=TimeOut] unless entity @s[scores={servermode=0},tag=!SMCustom] run tellraw @a[predicate=custom:indimension] ["",{"text":"[FORFEIT] ","bold":true,"color":"dark_red"},{"text":"Someone left the 1v1 Duel match, so it has ended.","color":"red"}]
execute if entity @s[tag=TimeOut] unless entity @s[scores={servermode=0},tag=!SMCustom] run scoreboard players set @s ForfeitTimeout 1200

#adds original player back (non-servermode)
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=InRanked,tag=WasInBlue,team=Lobby,tag=!Forfeiter,limit=1] unless entity @a[predicate=custom:indimension,team=Blue] run tellraw @s {"text":"You were added back to Blue to finish the 1v1 Duel match.","color":"red","italic":true}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=InRanked,tag=WasInBlue,team=Lobby,tag=!Forfeiter,limit=1] unless entity @a[predicate=custom:indimension,team=Blue] run function game:joinblue
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=InRanked,tag=WasInYellow,team=Lobby,tag=!Forfeiter,limit=1] unless entity @a[predicate=custom:indimension,team=Yellow] run tellraw @s {"text":"You were added back to Yellow to finish the 1v1 Duel match.","color":"red","italic":true}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,tag=InRanked,tag=WasInYellow,team=Lobby,tag=!Forfeiter,limit=1] unless entity @a[predicate=custom:indimension,team=Yellow] run function game:joinyellow

#timeout
scoreboard players add @s[tag=TimeOut] ForfeitTimeout 1
execute if entity @s[tag=TimeOut] run kill @e[type=tnt]
execute if entity @s[tag=TimeOut] run clear @a[predicate=custom:indimension,team=Yellow] #custom:clear
execute if entity @s[tag=TimeOut] run clear @a[predicate=custom:indimension,team=Yellow] crossbow{nova:1b}
execute if entity @s[tag=TimeOut] run clear @a[predicate=custom:indimension,team=Blue] #custom:clear
execute if entity @s[tag=TimeOut] run clear @a[predicate=custom:indimension,team=Blue] crossbow{nova:1b}
execute if entity @s[tag=TimeOut] run tp @a[predicate=custom:indimension,team=Blue] 12 64 -66 0 0
execute if entity @s[tag=TimeOut] run tp @a[predicate=custom:indimension,team=Yellow] 12 64 66 180 0
tag @s[tag=TimeOut] add noAchievements
scoreboard players set @s[tag=TimeOut] RandomItem -3
execute if entity @s[scores={ForfeitTimeout=1}] run tellraw @a[predicate=custom:indimension] ["",{"text":"[TIMEOUT] ","bold":true,"color":"dark_red"},{"text":"Someone left the 1v1 Duel match! They have 1 minute to rejoin; otherwise, the game will end.","color":"red"}]
execute if entity @s[tag=TimeOut] if entity @a[predicate=custom:indimension,team=Blue] if entity @a[predicate=custom:indimension,team=Yellow] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @s[tag=TimeOut] if entity @a[predicate=custom:indimension,team=Blue] if entity @a[predicate=custom:indimension,team=Yellow] run tag @s remove TimeOut
scoreboard players reset @s[tag=!TimeOut] ForfeitTimeout
tag @s[tag=!TimeOut] remove noAchievements

#force win
execute if entity @s[tag=!GameEnd,scores={ForfeitTimeout=1200..}] if entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run scoreboard players set Blue: RoundsWon 2
execute if entity @s[tag=!GameEnd,scores={ForfeitTimeout=1200..}] if entity @a[predicate=custom:indimension,team=Blue] unless entity @a[predicate=custom:indimension,team=Yellow] run function rr_duel:game/winblue
execute if entity @s[tag=!GameEnd,scores={ForfeitTimeout=1200..}] unless entity @a[predicate=custom:indimension,team=Blue] if entity @a[predicate=custom:indimension,team=Yellow] run scoreboard players set Yellow: RoundsWon 2
execute if entity @s[tag=!GameEnd,scores={ForfeitTimeout=1200..}] unless entity @a[predicate=custom:indimension,team=Blue] if entity @a[predicate=custom:indimension,team=Yellow] run function rr_duel:game/winyellow

##double forfeit
execute unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[predicate=custom:indimension,team=Yellow] unless entity @a[predicate=custom:indimension,team=Blue] run function game:forcestop