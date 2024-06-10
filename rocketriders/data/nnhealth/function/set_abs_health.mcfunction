##by NOPEname

scoreboard players operation @s nnhealth_max = @s nnhealth
function nnhealth:set_max_health

# fill up empty hearts & update hearts
effect give @s minecraft:instant_health 1 250 true
