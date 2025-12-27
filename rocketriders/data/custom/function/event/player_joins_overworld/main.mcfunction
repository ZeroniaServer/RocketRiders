# If player had previously joined, give them a storage entry (legacy score)
execute if score @s firstJoined matches 1.. run function custom:player_action/playerdata/save

# Reset team, scores, triggers, and tags
team leave @s
scoreboard players reset @s
function custom:event/player_joins_overworld/reset_tags/main

# Reset items, effects, and attributes
effect clear @s
clear @s *
function custom:event/player_joins_overworld/reset_attributes/main

# Update join state and time_since_joined_overworld
scoreboard players set @s event.player_joins_overworld.state -1
scoreboard players set @s time_since_joined_overworld 0

# Update is_dead flag
scoreboard players set @a[x=0] flag.is_dead 1
scoreboard players set @e[x=0,type=player] flag.is_dead 0

# Join lobby
function custom:team/join_lobby
gamemode survival @s
gamemode adventure @s
tp @s -43 211 78 90 0
tp @s @s
spawnpoint @s -43 211 78 90 0
effect give @s instant_health 1 100 true
effect give @s resistance infinite 100 true
effect give @s night_vision infinite 100 true
title @s times 5 30 5
title @s actionbar ""
title @s title ""
title @s subtitle ""

# Advancements
execute if predicate game:achievements_can_be_awarded run function achievements:roots
execute if predicate rr:server_mode/realms run advancement grant @s only 2811iaj1:root

# Load data (and initialise if new player)
execute unless function custom:player_action/playerdata/load run function custom:event/player_joins_overworld/new_player
