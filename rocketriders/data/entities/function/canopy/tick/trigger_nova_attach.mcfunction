function custom:player_action/forget_all_canopies
ride @s dismount
tp @s ~ ~2 ~
execute at @s positioned ~ ~-0.5 ~ run function custom:player_action/trigger_nova_attach
