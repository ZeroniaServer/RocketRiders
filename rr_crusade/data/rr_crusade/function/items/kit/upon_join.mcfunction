execute if score @s start_as_crusade_kit matches 1..3 run scoreboard players operation @s crusadekit = @s start_as_crusade_kit
execute unless score @s start_as_crusade_kit matches 1..3 store result score @s crusadekit run random value 1..3

execute if predicate rr_crusade:kit/knight run function rr_crusade:items/kit/give/knight
execute if predicate rr_crusade:kit/archer run function rr_crusade:items/kit/give/archer
execute if predicate rr_crusade:kit/mage run function rr_crusade:items/kit/give/mage

function custom:player/playerdata/save
