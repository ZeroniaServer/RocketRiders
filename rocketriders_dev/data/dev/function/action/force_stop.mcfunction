scoreboard players reset * dev_action
scoreboard players set $performing_dev_action dev_action 1
scoreboard players set @s dev_action 1

execute store success score $tp_to_mod_room dev_action if predicate custom:team/any_arena_team

function game:forcestop
schedule function dev:__impl__/force_stop/step_2 4t
