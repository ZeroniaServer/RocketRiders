scoreboard players remove @s impulse_cooldown 1
execute if score @s impulse_cooldown matches 1.. run return run advancement revoke @s only lobby:compass_cooldown
scoreboard players reset @s impulse_cooldown