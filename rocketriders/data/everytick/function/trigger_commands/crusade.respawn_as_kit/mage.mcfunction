execute unless predicate game:phase/match/play run return run function rr_crusade:items/kit/give/mage

execute unless score @s respawn_as_crusade_kit matches 3 run function rr_crusade:items/kit/notify/mage
scoreboard players set @s respawn_as_crusade_kit 3
