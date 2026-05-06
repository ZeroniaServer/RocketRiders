tag @s remove switchGamemodes
tag @s add swapEnabled
execute store result score $swap_side match run random value 0..1
function game:match_components/reset
