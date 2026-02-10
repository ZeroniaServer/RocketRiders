# Do this to be absolutely safe
function game:forcestop

# Run the latest update function
scoreboard players remove $WorldVersion CmdData 1
function world_updates:check_updates
