# Unpause
execute if predicate game:game_paused if score $chunk_clear_progress global matches 50.. run function rr_duel:game/start_new_round

execute if predicate game:game_paused run bossbar add rr_duel:resetting_arena [{color:"red",text:"Resetting the arena..."}]
execute if predicate game:game_paused run bossbar set rr_duel:resetting_arena color red
execute if predicate game:game_paused run bossbar set rr_duel:resetting_arena max 50
execute if predicate game:game_paused store result bossbar rr_duel:resetting_arena value run scoreboard players get $chunk_clear_progress global
execute if predicate game:game_paused run bossbar set rr_duel:resetting_arena players @a[x=0,predicate=!custom:team/lobby]
execute unless predicate game:game_paused run bossbar remove rr_duel:resetting_arena

#leave midgame
function rr_duel:game/leavemidgame

#tracking players and locking join pads
tag @a[x=0,predicate=custom:team/blue] add InRanked
tag @a[x=0,predicate=custom:team/yellow] add InRanked

function game:cancelyellow
function game:cancelblue

#Item RNG
execute unless predicate game:game_paused run scoreboard players add @s RandomItem 1
execute unless predicate game:game_paused unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function items:giverandom
execute unless predicate game:game_paused unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute unless predicate game:game_paused if predicate game:modifiers/minute_mix/on run function items:minutemix

#win
execute unless predicate game:game_paused unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BlueWon] if function game:check/blue_portal_broken run function rr_duel:game/winyellow
execute unless predicate game:game_paused unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BlueWon] if function game:check/blue_portal_broken run function rr_duel:game/winyellow

execute unless predicate game:game_paused unless entity @s[tag=CriteriaTrue] if entity @s[tag=!YellowWon] if function game:check/yellow_portal_broken run function rr_duel:game/winblue
execute unless predicate game:game_paused unless entity @s[tag=CriteriaTrue] if entity @s[tag=!YellowWon] if function game:check/yellow_portal_broken run function rr_duel:game/winblue

#arena clear cheesing
execute if entity @e[x=0,type=marker,tag=PlacerClear] run tag @s remove CriteriaTrue
tag @e[x=0,type=marker,tag=PlacerClear] add BasePlaced
tag @e[x=0,type=marker,tag=PlacerClear] add Cleared

scoreboard players add Blue: RoundsWon 0
scoreboard players add Yellow: RoundsWon 0

##forfeit
#initial condition - use tag NOFORFEITS to disable forfeits
execute unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. if entity @a[x=0,predicate=custom:team/yellow] unless entity @a[x=0,predicate=custom:team/blue] run tag @s add TimeOut
execute unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[x=0,predicate=custom:team/yellow] if entity @a[x=0,predicate=custom:team/blue] run tag @s add TimeOut
execute if entity @s[tag=TimeOut] if predicate rr:is_cubekrowd run tellraw @a[x=0] ["",{"text":"[FORFEIT] ","bold":true,"color":"dark_red"},{"text":"Someone left the 1v1 Duel match, so it has ended.","color":"red"}]
execute if entity @s[tag=TimeOut] if predicate rr:is_cubekrowd run scoreboard players set @s ForfeitTimeout 1200

#adds original player back (non-servermode)
execute unless predicate rr:is_cubekrowd as @a[x=0,tag=InRanked,tag=WasInBlue,predicate=custom:team/lobby,tag=!Forfeiter,limit=1] unless entity @a[x=0,predicate=custom:team/blue] run tellraw @s {"text":"You were added back to Blue to finish the 1v1 Duel match.","color":"red","italic":true}
execute unless predicate rr:is_cubekrowd as @a[x=0,tag=InRanked,tag=WasInBlue,predicate=custom:team/lobby,tag=!Forfeiter,limit=1] unless entity @a[x=0,predicate=custom:team/blue] run function game:joinblue
execute unless predicate rr:is_cubekrowd as @a[x=0,tag=InRanked,tag=WasInYellow,predicate=custom:team/lobby,tag=!Forfeiter,limit=1] unless entity @a[x=0,predicate=custom:team/yellow] run tellraw @s {"text":"You were added back to Yellow to finish the 1v1 Duel match.","color":"red","italic":true}
execute unless predicate rr:is_cubekrowd as @a[x=0,tag=InRanked,tag=WasInYellow,predicate=custom:team/lobby,tag=!Forfeiter,limit=1] unless entity @a[x=0,predicate=custom:team/yellow] run function game:joinyellow

#timeout
scoreboard players add @s[tag=TimeOut] ForfeitTimeout 1
execute if entity @s[tag=TimeOut] run kill @e[x=0,type=tnt]
execute if entity @s[tag=TimeOut] if predicate game:modifiers/punchable_tnt/on run kill @e[x=0,predicate=entities:type/punchable_tnt]
execute if entity @s[tag=TimeOut] unless predicate game:game_paused as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if entity @s[tag=TimeOut] unless predicate game:game_paused as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute if entity @s[tag=TimeOut] unless predicate game:game_paused run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if entity @s[tag=TimeOut] unless predicate game:game_paused run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
tag @s[tag=TimeOut] add noAchievements
scoreboard players set @s[tag=TimeOut] RandomItem -3
execute if entity @s[scores={ForfeitTimeout=1}] run tellraw @a[x=0] ["",{"text":"[TIMEOUT] ","bold":true,"color":"dark_red"},{"text":"Someone left the 1v1 Duel match! They have 1 minute to rejoin; otherwise, the game will end.","color":"red"}]
execute if entity @s[tag=TimeOut] if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @s[tag=TimeOut] if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run tag @s remove TimeOut
scoreboard players reset @s[tag=!TimeOut] ForfeitTimeout
tag @s[tag=!TimeOut] remove noAchievements

#force win
execute unless predicate game:match_over if score @s ForfeitTimeout matches 1200.. if entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run scoreboard players set Blue: RoundsWon 2
execute unless predicate game:match_over if score @s ForfeitTimeout matches 1200.. if entity @a[x=0,predicate=custom:team/blue] unless entity @a[x=0,predicate=custom:team/yellow] run function rr_duel:game/winblue
execute unless predicate game:match_over if score @s ForfeitTimeout matches 1200.. unless entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run scoreboard players set Yellow: RoundsWon 2
execute unless predicate game:match_over if score @s ForfeitTimeout matches 1200.. unless entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run function rr_duel:game/winyellow

##double forfeit
execute unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[x=0,predicate=custom:team/yellow] unless entity @a[x=0,predicate=custom:team/blue] run function game:forcestop