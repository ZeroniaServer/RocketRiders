########################################################
## GAME RUNNING: This function runs from the start of ##
## a match until players are returned to the lobby.   ##
########################################################

##Player spawnpoints
spawnpoint @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
spawnpoint @a[x=0,predicate=custom:team/yellow] 12 64 66 -180 0

##Prevent players from going above the arena
execute unless predicate game:phase/match/paused unless predicate game:phase/match/over as @a[x=0,predicate=custom:team/any_playing_team,gamemode=!spectator,tag=!JoinBlue,tag=!JoinYellow] at @s in overworld if entity @s[y=181,dy=100] run function game:punishbreach
execute unless predicate game:phase/match/paused if predicate game:phase/match/over as @a[x=0,predicate=custom:team/blue] at @s in overworld if entity @s[y=181,dy=100] run tp @s 12 64 -66 0 0
execute unless predicate game:phase/match/paused if predicate game:phase/match/over as @a[x=0,predicate=custom:team/yellow] at @s in overworld if entity @s[y=181,dy=100] run tp @s 12 64 66 180 0
execute unless predicate game:phase/match/paused if predicate game:phase/match/over as @a[x=0,predicate=custom:team/spectator] at @s in overworld if entity @s[y=181,dy=100] run tp @s 12 100 0.5 90 90

##Player void
execute unless predicate game:phase/match/paused unless predicate game:phase/match/over as @a[x=0,predicate=custom:team/any_arena_team,predicate=custom:in_void] unless score @s ThrowPlat matches 1.. at @s run function game:void
execute unless predicate game:phase/match/paused if predicate game:phase/match/over as @a[x=0,predicate=custom:team/blue,predicate=custom:in_void] run tp @s 12 64 -66 0 0
execute unless predicate game:phase/match/paused if predicate game:phase/match/over as @a[x=0,predicate=custom:team/yellow,predicate=custom:in_void] run tp @s 12 64 66 180 0
execute unless predicate game:phase/match/paused if predicate game:phase/match/over as @a[x=0,predicate=custom:team/spectator,predicate=custom:in_void] run tp @s 12 100 0.5 90 90

##General everytick commands
function everytick:spawnables
function everytick:clear_spawnblocks
function everytick:no_fall
execute if entity @e[x=0,type=#arrows] run function everytick:fire_arrow
execute if predicate game:game_rules/disable_cannoning/on as @e[x=0,type=tnt,predicate=custom:tnt_is_moving_too_fast] run function game:slow_down_tnt

##Kill excessive entities for lag reduction purposes (sorry Robo)
execute store result score $cart_count var if entity @e[x=0,type=tnt_minecart,predicate=custom:in_arena]
execute if score $cart_count var matches 101.. run kill @e[limit=1,sort=random,x=0,type=tnt_minecart,predicate=custom:in_arena]

execute store result score $vortex_count var if entity @e[x=0,type=area_effect_cloud,predicate=entities:type/vortex/brain,predicate=custom:in_arena]
execute store result score $vortex_projectile_count var if entity @e[x=0,type=area_effect_cloud,predicate=entities:type/vortex_projectile/brain,predicate=custom:in_arena]
scoreboard players operation $vortex_count var += $vortex_projectile_count var
execute if score $vortex_count var matches 101.. as @e[limit=1,sort=random,x=0,type=area_effect_cloud,predicate=entities:type/vortex/brain,predicate=custom:in_arena] on vehicle run function custom:kill_entity_and_passengers

execute store result score $fireball_count var if entity @e[x=0,type=fireball,predicate=custom:in_arena,predicate=!custom:is_moving]
execute if score $fireball_count var matches 101.. run kill @e[limit=1,sort=random,x=0,type=fireball,predicate=custom:in_arena,predicate=!custom:is_moving]

execute store result score $obsidian_shield_projectile_count var if entity @e[x=0,type=dragon_fireball,predicate=custom:in_arena,predicate=!custom:is_moving]
execute if score $obsidian_shield_projectile_count var matches 101.. run kill @e[limit=1,sort=random,x=0,type=dragon_fireball,predicate=custom:in_arena,predicate=!custom:is_moving]

##Regenerate base frames
execute unless predicate game:gamemode_components/custom_base_frames unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 67 39 64 67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 33 67 39 33 67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 -67 39 64 -67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 33 -67 39 33 -67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 63 67 -15 34 67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames unless predicate game:gamemode_components/arena/bedrock_frame run fill 39 63 67 39 34 67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames unless predicate game:gamemode_components/arena/bedrock_frame run fill -15 63 -67 -15 34 -67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames unless predicate game:gamemode_components/arena/bedrock_frame run fill 39 63 -67 39 34 -67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 67 39 64 67 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill -15 33 67 39 33 67 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill -15 64 -67 39 64 -67 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill -15 33 -67 39 33 -67 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill -15 63 67 -15 34 67 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill 39 63 67 39 34 67 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill -15 63 -67 -15 34 -67 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill 39 63 -67 39 34 -67 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill 10 64 67 14 64 67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill 10 64 -67 14 64 -67 obsidian
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill 39 64 68 -15 64 69 bedrock
execute unless predicate game:gamemode_components/custom_base_frames if predicate game:gamemode_components/arena/bedrock_frame run fill 39 64 -68 -15 64 -69 bedrock

## Castle
# Pathways
execute if predicate game:gamemode_components/arena/castle run function game:arena/place_castle_pathways
# Hanging ladders
execute if predicate game:gamemode_components/arena/castle unless block 24 62 -52 minecraft:ladder if block 24 61 -52 minecraft:ladder run setblock 24 61 -52 air destroy
execute if predicate game:gamemode_components/arena/castle unless block 24 61 -52 minecraft:ladder if block 24 60 -52 minecraft:ladder run setblock 24 60 -52 air destroy
execute if predicate game:gamemode_components/arena/castle unless block 0 62 52 minecraft:ladder if block 0 61 52 minecraft:ladder run setblock 0 61 52 air destroy
execute if predicate game:gamemode_components/arena/castle unless block 0 61 52 minecraft:ladder if block 0 60 52 minecraft:ladder run setblock 0 60 52 air destroy

##Hotfix for Hypersonic
execute as @e[x=0,type=marker,tag=hyperExtra] at @s run function items:hyperextra
