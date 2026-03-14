scoreboard players set $freeze_join_trigger global 1
scoreboard players reset @s join

execute if predicate game:teams/blue_is_joinable if predicate game:teams/yellow_is_joinable run return run function everytick:trigger_commands/join/random
execute if predicate game:teams/yellow_is_joinable run return run function everytick:trigger_commands/join/yellow
function everytick:trigger_commands/join/blue
