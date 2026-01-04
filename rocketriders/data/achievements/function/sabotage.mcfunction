##Missile Sabotage achievement
execute if entity @s[advancements={achievements:rr_challenges/sabotage=true}] run return 1
execute if score @s minedTNT matches 1000.. run return run advancement grant @s only achievements:rr_challenges/sabotage
execute if score @s prevMinedTNT = @s minedTNT run return fail
execute unless score @s minedTNT matches 1.. run return fail

# update advancement progress
execute store result score $value var store result storage rocketriders:main sabotage.value int 1 run scoreboard players get @s minedTNT
function achievements:sabotage_loop with storage rocketriders:main sabotage

# save progress
function custom:player_action/playerdata/save
scoreboard players operation @s prevMinedTNT = @s minedTNT

return 1
