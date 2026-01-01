# If player still exists and is in the overworld, do nothing
execute on origin at @s if dimension minecraft:overworld run return 1

# Otherwise, trigger "player_left_overworld" event and remove monitor
function custom:event/player_left_overworld/main with entity @s data.player_monitoring 
kill @s
