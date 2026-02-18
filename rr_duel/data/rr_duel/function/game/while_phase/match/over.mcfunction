scoreboard players reset @s fakeendtimer
tag @s remove FakeGameEnd

#forfeit prize/loss
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[x=0,tag=InRanked,predicate=custom:team/blue] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[x=0,tag=InRanked,predicate=custom:team/yellow] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] as @a[x=0,tag=ForfeitWon] run function rr_duel:forfeit/giveprize
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] as @a[x=0,tag=ForfeitWon] run function custom:player_action/playerdata/save
execute if entity @s[scores={ForfeitTimeout=1200..}] run scoreboard players reset @a[x=0,tag=!InRanked] ForfeitWin
execute if entity @s[scores={ForfeitTimeout=1200..}] run scoreboard players reset @a[x=0,tag=!InRanked] ForfeitLoss

execute if score $match_over_timer global matches 2.. run tag @a[x=0,predicate=custom:team/blue] remove InRanked
execute if score $match_over_timer global matches 2.. run tag @a[x=0,predicate=custom:team/yellow] remove InRanked
scoreboard players reset @s ForfeitTimeout
scoreboard players reset $1v1_duel_time_out_period global
tag @a[x=0] remove Forfeiter

scoreboard players reset @s Rounds

execute if score $match_over_timer global matches 569.. run scoreboard objectives setdisplay sidebar.team.gold
execute if score $match_over_timer global matches 569.. run scoreboard objectives setdisplay sidebar.team.blue
execute if score $match_over_timer global matches 569.. run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if score $match_over_timer global matches 569.. run scoreboard players reset Blue: RoundsWon
execute if score $match_over_timer global matches 569.. run scoreboard players reset Yellow: RoundsWon

bossbar remove rr_duel:resetting_arena
bossbar remove rr_duel:forfeit_timer
