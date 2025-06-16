scoreboard players reset @s event.player_dies
scoreboard players set @s flag.is_dead 1
execute store success score $void_death var if entity @s[advancements={custom:event/player_dies={die_void=true}}]
advancement revoke @s only custom:event/player_dies

# Do not count towards deaths statistic during end game phase
execute unless predicate game:game_started run scoreboard players remove @s deaths 1
execute if predicate game:game_started if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameEnd] run scoreboard players remove @s deaths 1


## Achievements
scoreboard players set $can_grant_achievements var 0
execute if predicate game:game_started if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled,scores={servermode=0},tag=!realms] run scoreboard players set $can_grant_achievements var 1

# So Close, Yet So Fall Away (if I am touching the floor of the enemy nether portal, award me)
execute if score $can_grant_achievements var matches 1 if entity @s[team=Blue,predicate=!custom:not_falling,x=-10,dx=45,y=60,dy=2,z=73,dz=2] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noPortal] run advancement grant @s only achievements:rr_challenges/fall_away
execute if score $can_grant_achievements var matches 1 if entity @s[team=Yellow,predicate=!custom:not_falling,x=-10,dx=45,y=60,dy=2,z=-75,dz=2] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noPortal] run advancement grant @s only achievements:rr_challenges/fall_away

# Volcanic Hatred (if I am inside of lava, award the owners of the nearby lava splash markers)
execute if predicate game:game_started if predicate custom:on_blue_or_yellow_team if predicate custom:is_in_lava as @e[distance=..5,type=area_effect_cloud,tag=lavasplash_alone] on origin run advancement grant @s[predicate=custom:on_blue_or_yellow_team] only achievements:rr_challenges/volcanic_hatred

# Get Off My Lawn (if I am killed within 7 blocks of an enemy canopy, and my attacker is within 7 blocks of that same canopy, award the attacker)
execute if entity @s[team=Blue] positioned as @n[distance=..7,predicate=entities:canopy,predicate=entities:canopy/origin_team_is_yellow] on attacker if entity @s[distance=..7,team=Yellow] run advancement grant @s only achievements:rr_challenges/get_off_lawn
execute if entity @s[team=Yellow] positioned as @n[distance=..7,predicate=entities:canopy,predicate=entities:canopy/origin_team_is_blue] on attacker if entity @s[distance=..7,team=Blue] run advancement grant @s only achievements:rr_challenges/get_off_lawn
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=onlyBlue] if entity @s[team=Blue] positioned as @n[distance=..7,predicate=entities:canopy,predicate=entities:canopy/origin_team_is_blue] on attacker if entity @s[distance=..7,team=Blue] run advancement grant @s only achievements:rr_challenges/get_off_lawn


## Death-Specific
# Apply poison on respawn if the player breached the lobby
execute if predicate game:game_started if predicate custom:on_blue_or_yellow_team run tag @s[y=181,dy=100] add on_respawn.apply_poison_effect

# Handle falling into the void
execute if predicate game:game_started if predicate custom:on_blue_or_yellow_team if score $void_death var matches 1 run scoreboard players add @s FellVoid 1
execute if predicate game:game_started if predicate custom:on_blue_or_yellow_team run tag @s[tag=crosser] add on_respawn.apply_crosser_void_fall_effects
execute if predicate game:game_started if predicate custom:on_blue_or_yellow_team run scoreboard players set @s[tag=crosser] voidNoFallCount 0


## General
effect clear @s levitation

scoreboard players reset @s novattach
tag @s remove YellowNovaNear
tag @s remove YellowNovaAttach
tag @s remove BlueNovaNear
tag @s remove BlueNovaAttach

tag @s add matchOrigin
execute as @e[x=0,type=ender_pearl] if function custom:match_origin positioned as @s run function custom:event/player_dies/withdraw_canopy
tag @s remove matchOrigin

tag @s remove onBlue
tag @s remove onYellow

tag @s remove beenOnBlue
tag @s remove beenOnYellow
tag @s remove beenOnBoth

function custom:player_action/forget_all_canopies

execute if entity @s[tag=CarryFlag] run function custom:event/player_dies/restore_flag

attribute @s minecraft:safe_fall_distance modifier remove rocketriders:canopy
attribute @s minecraft:jump_strength modifier remove rocketriders:canopy
attribute @s minecraft:movement_speed modifier remove rocketriders:canopy

## If alive, instantly trigger respawn
tag @s add player_dies.this
execute unless entity @e[x=0,type=player,tag=player_dies.this] run return run tag @s remove player_dies.this
tag @s remove player_dies.this
function custom:event/player_respawns/main
