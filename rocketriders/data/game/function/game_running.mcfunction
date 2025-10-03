########################################################
## GAME RUNNING: This function runs from the start of ##
## a match until players are returned to the lobby.   ##
########################################################

##Player spawnpoints
spawnpoint @a[x=0,team=Blue] 12 64 -66 0 0
spawnpoint @a[x=0,team=Yellow] 12 64 66 -180 0

##Prevent players from going above the arena
execute unless predicate game:game_paused unless predicate game:match_over as @a[x=0,predicate=custom:on_blue_or_yellow_team,gamemode=!spectator,tag=!JoinBlue,tag=!JoinYellow] at @s in overworld if entity @s[y=181,dy=100] run function game:punishbreach
execute unless predicate game:game_paused if predicate game:match_over as @a[x=0,team=Blue] at @s in overworld if entity @s[y=181,dy=100] run tp @s 12 64 -66 0 0
execute unless predicate game:game_paused if predicate game:match_over as @a[x=0,team=Yellow] at @s in overworld if entity @s[y=181,dy=100] run tp @s 12 64 66 180 0
execute unless predicate game:game_paused if predicate game:match_over as @a[x=0,team=Spectator] at @s in overworld if entity @s[y=181,dy=100] run tp @s 12 100 0.5 90 90

##Player void
execute unless predicate game:game_paused unless predicate game:match_over as @a[x=0,predicate=custom:on_blue_or_yellow_or_spectator_team,predicate=custom:in_void] unless score @s ThrowPlat matches 1.. at @s run function game:void
execute unless predicate game:game_paused if predicate game:match_over as @a[x=0,team=Blue,predicate=custom:in_void] run tp @s 12 64 -66 0 0
execute unless predicate game:game_paused if predicate game:match_over as @a[x=0,team=Yellow,predicate=custom:in_void] run tp @s 12 64 66 180 0
execute unless predicate game:game_paused if predicate game:match_over as @a[x=0,team=Spectator,predicate=custom:in_void] run tp @s 12 100 0.5 90 90

##General everytick commands
function everytick:spawnables
function everytick:clear_spawnblocks
function everytick:no_fall
execute if entity @e[x=0,type=tnt_minecart] run function everytick:init_kill_carts
execute if entity @e[x=0,type=#arrows] run function everytick:fire_arrow
execute if predicate game:game_rules/disable_cannoning/on as @e[x=0,type=tnt,predicate=custom:tnt_is_moving_too_fast] run function game:slow_down_tnt

##Regenerate base frames
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 64 67 39 64 67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 33 67 39 33 67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 64 -67 39 64 -67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 33 -67 39 33 -67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 63 67 -15 34 67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 63 67 39 34 67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 63 -67 -15 34 -67 obsidian
execute unless predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 63 -67 39 34 -67 obsidian
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 64 67 39 64 67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 33 67 39 33 67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 64 -67 39 64 -67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 33 -67 39 33 -67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 63 67 -15 34 67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 63 67 39 34 67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill -15 63 -67 -15 34 -67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 63 -67 39 34 -67 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 10 64 67 14 64 67 obsidian
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 10 64 -67 14 64 -67 obsidian
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 64 68 -15 64 69 bedrock
execute if predicate game:gamemode_components/arena/bedrock_frame unless entity @s[tag=customBaseFrames] run fill 39 64 -68 -15 64 -69 bedrock

##Hotfix for Hypersonic
execute as @e[x=0,type=marker,tag=hyperExtra] at @s run function items:hyperextra
