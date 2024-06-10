##by NOPEname

# max score is saved since it will be modified by "set_abs_health"

scoreboard players operation __tmp nnhealth_max = @s nnhealth_max
function nnhealth:set_abs_health
scoreboard players operation @s nnhealth_max = __tmp nnhealth_max
