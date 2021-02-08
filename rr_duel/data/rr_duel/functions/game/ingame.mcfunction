#scoreboards
scoreboard objectives setdisplay sidebar.team.gold RoundsWon
scoreboard objectives setdisplay sidebar.team.blue RoundsWon
scoreboard objectives setdisplay sidebar.team.dark_gray RoundsWon

#leave midgame
function rr_duel:game/leavemidgame

#tracking players and locking joinpads
tag @a[team=Blue] add InRanked
tag @a[team=Yellow] add InRanked

function game:cancelyellow
function game:cancelblue

#Item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
spawnpoint @a[team=Blue] 12 64 -66 0
spawnpoint @a[team=Yellow] 12 64 66 -180
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BlueWon] unless block 11 38 -74 nether_portal run function rr_duel:game/winyellow
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BlueWon] unless block 13 38 -74 nether_portal run function rr_duel:game/winyellow

execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!YellowWon] unless block 13 38 74 nether_portal run function rr_duel:game/winblue
execute unless entity @s[tag=CriteriaTrue] if entity @s[tag=!YellowWon] unless block 11 38 74 nether_portal run function rr_duel:game/winblue

#arena clear cheesing
execute if entity @e[tag=PlacerClear,type=area_effect_cloud] run tag @s remove CriteriaTrue
tag @e[tag=PlacerClear,type=area_effect_cloud] add BasePlaced
tag @e[tag=PlacerClear,type=area_effect_cloud] add Cleared

scoreboard players add Blue: RoundsWon 0
scoreboard players add Yellow: RoundsWon 0

##forfeit
#initial condition - use tag NOFORFEITS to disable forfeits
execute unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. if entity @a[team=Yellow] unless entity @a[team=Blue] run tag @s add TimeOut
execute unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[team=Yellow] if entity @a[team=Blue] run tag @s add TimeOut
execute as @s[tag=TimeOut] unless entity @s[scores={servermode=0},tag=!SMCustom] run tellraw @a ["",{"text":"[FORFEIT] ","bold":true,"color":"dark_red"},{"text":"Someone left the 1v1 Duel match, so it has ended.","color":"red"}]
execute as @s[tag=TimeOut] unless entity @s[scores={servermode=0},tag=!SMCustom] run scoreboard players set @s ForfeitTimeout 1200

#adds original player back (non-servermode)
execute as @s[scores={servermode=0},tag=!SMCustom] as @a[tag=InRanked,tag=WasInBlue,team=Lobby,tag=!Forfeiter,limit=1] unless entity @a[team=Blue] run tellraw @s {"text":"You were added back to Blue to finish the 1v1 Duel match.","color":"red","italic":"true"}
execute as @s[scores={servermode=0},tag=!SMCustom] as @a[tag=InRanked,tag=WasInBlue,team=Lobby,tag=!Forfeiter,limit=1] unless entity @a[team=Blue] run function game:joinblue
execute as @s[scores={servermode=0},tag=!SMCustom] as @a[tag=InRanked,tag=WasInYellow,team=Lobby,tag=!Forfeiter,limit=1] unless entity @a[team=Yellow] run tellraw @s {"text":"You were added back to Yellow to finish the 1v1 Duel match.","color":"red","italic":"true"}
execute as @s[scores={servermode=0},tag=!SMCustom] as @a[tag=InRanked,tag=WasInYellow,team=Lobby,tag=!Forfeiter,limit=1] unless entity @a[team=Yellow] run function game:joinyellow

#timeout
scoreboard players add @s[tag=TimeOut] ForfeitTimeout 1
execute as @s[tag=TimeOut] run kill @e[type=tnt]
execute as @s[tag=TimeOut] run clear @a[team=Yellow] #custom:clear
execute as @s[tag=TimeOut] run clear @a[team=Blue] #custom:clear
execute as @s[tag=TimeOut] run tp @a[team=Blue] 12 64 -66 0 0
execute as @s[tag=TimeOut] run tp @a[team=Yellow] 12 64 66 180 0
tag @s[tag=TimeOut] add noAchievements
scoreboard players set @s[tag=TimeOut] RandomItem -3
execute as @s[scores={ForfeitTimeout=1}] run tellraw @a ["",{"text":"[TIMEOUT] ","bold":true,"color":"dark_red"},{"text":"Someone left the 1v1 Duel match! They have 1 minute to rejoin; otherwise, the game will end.","color":"red"}]
execute as @s[tag=TimeOut] if entity @a[team=Blue] if entity @a[team=Yellow] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute as @s[tag=TimeOut] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s remove TimeOut
scoreboard players reset @s[tag=!TimeOut] ForfeitTimeout
tag @s[tag=!TimeOut] remove noAchievements

#force win
execute as @s[scores={ForfeitTimeout=1200..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run scoreboard players set Blue: RoundsWon 2
execute as @s[scores={ForfeitTimeout=1200..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run function rr_duel:game/winblue
execute as @s[scores={ForfeitTimeout=1200..}] unless entity @a[team=Blue] if entity @a[team=Yellow] run scoreboard players set Yellow: RoundsWon 2
execute as @s[scores={ForfeitTimeout=1200..}] unless entity @a[team=Blue] if entity @a[team=Yellow] run function rr_duel:game/winyellow

##double forfeit
execute unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[team=Yellow] unless entity @a[team=Blue] run function game:forcestop