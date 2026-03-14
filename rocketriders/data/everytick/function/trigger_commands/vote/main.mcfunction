# Default to dialog
execute if score @s vote matches 1 run return run function servermode:voting/show_dialog

# Vote
execute if score @s vote matches 1000.. run return run function everytick:trigger_commands/vote/cast_vote

# Fallback
tellraw @s {color:"red",text:"That is not a valid input"}
