execute on passengers run function custom:event/player_joins_overworld/delete_vehicle/kill

execute if entity @s[type=player] run return 0
ride @s dismount
tp @s ~ -10000000 ~
execute unless entity @s[type=!slime,type=!magma_cube] run data modify entity @s Size set value 0
kill @s
