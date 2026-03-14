execute unless predicate game:phase/match/play run return run function rr_crusade:items/kit/give/archer

execute unless score @s respawn_as_crusade_kit matches 2 run function rr_crusade:items/kit/notify/archer
scoreboard players set @s respawn_as_crusade_kit 2
