scoreboard players reset * dev_action
scoreboard players set $performing_dev_action dev_action 1
scoreboard players set @s dev_action 1

function game:forcestop
schedule function dev:_force_stop_/step_2 4t
