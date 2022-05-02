##by NOPEname

# workaround for "fake death glitch"
effect clear @s health_boost
execute store result score __tmp nnhealth_max run attribute @s minecraft:generic.max_health base get
execute if score __tmp nnhealth_max matches 20.. if score @s nnhealth_max matches ..19 run effect give @s health_boost 1 3 true

# reset max health in case of change from previous tick
function nnhealth:set_max_health

# set new health in case score changed
execute unless score @s nnhealth_mod matches 0 run function nnhealth:zz_private/new_health

# store old health score
scoreboard players operation @s nnhealth_old = @s nnhealth
