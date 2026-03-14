execute unless predicate game:phase/match/play run return run function rr_crusade:items/kit/give/knight

execute unless score @s respawn_as_crusade_kit matches 1 run function rr_crusade:items/kit/notify/knight
scoreboard players set @s respawn_as_crusade_kit 1
