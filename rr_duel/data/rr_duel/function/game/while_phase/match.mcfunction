#Sidebar
scoreboard objectives setdisplay sidebar.team.gold RoundsWon
scoreboard objectives setdisplay sidebar.team.blue RoundsWon
scoreboard objectives setdisplay sidebar.team.dark_gray RoundsWon

scoreboard players add Blue: RoundsWon 0
scoreboard players add Yellow: RoundsWon 0

execute unless predicate game:phase/match/paused run bossbar remove rr_duel:resetting_arena

##forfeit
#initial condition - use tag NOFORFEITS to disable forfeits
execute unless predicate game:phase/match/closing unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run scoreboard players set $1v1_duel_time_out_period global 1
execute unless predicate game:phase/match/closing unless entity @s[tag=NOFORFEITS] unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[limit=1,x=0,predicate=custom:team/yellow] if entity @a[limit=1,x=0,predicate=custom:team/blue] run scoreboard players set $1v1_duel_time_out_period global 1
execute unless predicate game:phase/match/closing if predicate rr_duel:time_out_period if predicate rr:is_cubekrowd run tellraw @a[x=0] ["",{bold:true,color:"dark_red",text:"[FORFEIT] "},{color:"red",text:"Someone left the 1v1 Duel match, so it has ended."}]
execute unless predicate game:phase/match/closing if predicate rr_duel:time_out_period if predicate rr:is_cubekrowd run scoreboard players set @s ForfeitTimeout 1200

#adds original player back (non-servermode)
execute unless predicate game:phase/match/closing unless predicate rr:is_cubekrowd as @e[limit=2,x=-0.5,y=-0.5,z=-0.5,dx=0,dy=0,dz=0,type=area_effect_cloud,tag=1v1_duel_player_tracker] run function rr_duel:game/player_tracking/check

#timeout
execute unless predicate game:phase/match/closing if predicate rr_duel:time_out_period run function rr_duel:game/while_time_out
execute unless predicate rr_duel:time_out_period run bossbar remove rr_duel:forfeit_timer
execute unless predicate rr_duel:time_out_period run scoreboard players reset @s ForfeitTimeout
execute if predicate game:phase/match/closing run bossbar remove rr_duel:forfeit_timer
execute if predicate game:phase/match/closing run scoreboard players reset @s ForfeitTimeout

#force win
execute unless predicate game:phase/match/closing if score @s ForfeitTimeout matches 1200.. if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run scoreboard players set Blue: RoundsWon 2
execute unless predicate game:phase/match/closing if score @s ForfeitTimeout matches 1200.. if entity @a[limit=1,x=0,predicate=custom:team/blue] unless entity @a[limit=1,x=0,predicate=custom:team/yellow] run function rr_duel:game/winblue
execute unless predicate game:phase/match/closing if score @s ForfeitTimeout matches 1200.. if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run scoreboard players set Yellow: RoundsWon 2
execute unless predicate game:phase/match/closing if score @s ForfeitTimeout matches 1200.. if entity @a[limit=1,x=0,predicate=custom:team/yellow] unless entity @a[limit=1,x=0,predicate=custom:team/blue] run function rr_duel:game/winyellow

##double forfeit
execute unless predicate game:phase/match/closing unless score Blue: RoundsWon matches 2.. unless score Yellow: RoundsWon matches 2.. unless entity @a[limit=1,x=0,predicate=custom:team/any_playing_team] run function game:forcestop
