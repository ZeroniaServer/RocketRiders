# Unpause
execute if predicate game:phase/match/paused if score $chunk_clear_progress global matches 50.. run function rr_duel:game/start_new_round

execute if predicate game:phase/match/paused run bossbar add rr_duel:resetting_arena {color:"red",text:"Resetting the arena..."}
execute if predicate game:phase/match/paused run bossbar set rr_duel:resetting_arena color red
execute if predicate game:phase/match/paused run bossbar set rr_duel:resetting_arena max 50
execute if predicate game:phase/match/paused store result bossbar rr_duel:resetting_arena value run scoreboard players get $chunk_clear_progress global
execute if predicate game:phase/match/paused run bossbar set rr_duel:resetting_arena players @a[x=0,predicate=!custom:team/lobby]
execute unless predicate game:phase/match/paused run bossbar remove rr_duel:resetting_arena

#Item RNG
execute unless predicate game:phase/match/paused run scoreboard players add @s RandomItem 1
execute unless predicate game:phase/match/paused unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function items:giverandom
execute unless predicate game:phase/match/paused unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute unless predicate game:phase/match/paused if predicate game:modifiers/minute_mix/on run function items:minutemix

#win
execute unless predicate game:phase/match/paused unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BothWon,tag=!BlueWon,tag=!YellowWon] if function game:check/blue_portal_broken if function game:check/yellow_portal_broken run function rr_duel:game/winboth
execute unless predicate game:phase/match/paused unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BothWon,tag=!BlueWon] if function game:check/blue_portal_broken run function rr_duel:game/winyellow
execute unless predicate game:phase/match/paused unless entity @s[tag=CriteriaTrue] if entity @s[tag=!BothWon,tag=!YellowWon] if function game:check/yellow_portal_broken run function rr_duel:game/winblue

scoreboard players add Blue: RoundsWon 0
scoreboard players add Yellow: RoundsWon 0

##forfeit
#initial condition - use tag NOFORFEITS to disable forfeits
execute unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run scoreboard players set $1v1_duel_time_out_period global 1
execute unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[limit=1,x=0,predicate=custom:team/yellow] if entity @a[limit=1,x=0,predicate=custom:team/blue] run scoreboard players set $1v1_duel_time_out_period global 1
execute if predicate rr_duel:time_out_period if predicate rr:is_cubekrowd run tellraw @a[x=0] ["",{bold:true,color:"dark_red",text:"[FORFEIT] "},{color:"red",text:"Someone left the 1v1 Duel match, so it has ended."}]
execute if predicate rr_duel:time_out_period if predicate rr:is_cubekrowd run scoreboard players set @s ForfeitTimeout 1200

#adds original player back (non-servermode)
execute unless predicate rr:is_cubekrowd as @e[limit=2,x=-0.5,y=-0.5,z=-0.5,dx=0,dy=0,dz=0,type=area_effect_cloud,tag=1v1_duel_player_tracker] run function rr_duel:game/player_tracking/check

#timeout
execute if predicate rr_duel:time_out_period run scoreboard players add @s ForfeitTimeout 1
execute if predicate rr_duel:time_out_period run kill @e[x=0,type=tnt]
execute if predicate rr_duel:time_out_period if predicate game:modifiers/punchable_tnt/on run kill @e[x=0,predicate=entities:type/punchable_tnt]
execute if predicate rr_duel:time_out_period unless predicate game:phase/match/paused as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if predicate rr_duel:time_out_period unless predicate game:phase/match/paused run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if predicate rr_duel:time_out_period unless predicate game:phase/match/paused run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
execute if predicate rr_duel:time_out_period run scoreboard players set @s RandomItem -3
execute if entity @s[scores={ForfeitTimeout=1}] run tellraw @a[x=0] ["",{bold:true,color:"dark_red",text:"[TIMEOUT] "},{color:"red",text:"Someone left the 1v1 Duel match! They have 1 minute to rejoin; otherwise, the match will end."}]
execute if predicate rr_duel:time_out_period if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if predicate rr_duel:time_out_period if entity @a[x=0,predicate=custom:team/blue] if entity @a[x=0,predicate=custom:team/yellow] run scoreboard players reset $1v1_duel_time_out_period global
execute unless predicate rr_duel:time_out_period run scoreboard players reset @s ForfeitTimeout

#force win
execute unless predicate game:phase/match/over if score @s ForfeitTimeout matches 1200.. if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run scoreboard players set Blue: RoundsWon 2
execute unless predicate game:phase/match/over if score @s ForfeitTimeout matches 1200.. if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run function rr_duel:game/winblue
execute unless predicate game:phase/match/over if score @s ForfeitTimeout matches 1200.. if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run scoreboard players set Yellow: RoundsWon 2
execute unless predicate game:phase/match/over if score @s ForfeitTimeout matches 1200.. if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run function rr_duel:game/winyellow

##double forfeit
execute unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[limit=1,x=0,predicate=custom:team/any_playing_team] run function game:forcestop
