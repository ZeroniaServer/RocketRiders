#forfeit prize/loss
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[x=0,tag=InRanked,predicate=custom:team/blue] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] run tag @a[x=0,tag=InRanked,predicate=custom:team/yellow] add ForfeitWon
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] as @a[x=0,tag=ForfeitWon] run function rr_duel:forfeit/giveprize
execute if entity @s[scores={ForfeitTimeout=1200..},tag=!noYZELO] as @a[x=0,tag=ForfeitWon] run function custom:player_action/playerdata/save
execute if entity @s[scores={ForfeitTimeout=1200..}] run scoreboard players reset @a[x=0,tag=!InRanked] ForfeitWin
execute if entity @s[scores={ForfeitTimeout=1200..}] run scoreboard players reset @a[x=0,tag=!InRanked] ForfeitLoss

execute if score $closing_timer global matches 2.. run tag @a[x=0,predicate=custom:team/blue] remove InRanked
execute if score $closing_timer global matches 2.. run tag @a[x=0,predicate=custom:team/yellow] remove InRanked