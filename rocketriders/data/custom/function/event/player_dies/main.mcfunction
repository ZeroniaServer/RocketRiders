scoreboard players reset @s event.player_dies
tag @s add is_dead
execute store success score $void_death var if entity @s[advancements={custom:event/player_dies={die_void=true}}]
execute store success score $lava_death var if entity @s[advancements={custom:event/player_dies={die_lava=true}}]
advancement revoke @s only custom:event/player_dies

# Increment the deaths statistic during play phase
execute if predicate game:phase/match/play run scoreboard players add @s match_statistic.deaths 1

## Return cursor item to the inventory
execute in minecraft:overworld run loot replace block 0 184 -16 container.1 26 loot custom:empty
execute in minecraft:overworld run item replace block 0 184 -16 container.0 from entity @s player.cursor
execute in minecraft:overworld unless predicate custom:player/can_pick_up_any_item unless predicate items:can_destroy_item/cursor run item replace block 0 184 -16 container.1 from entity @s hotbar.0
execute in minecraft:overworld unless predicate custom:player/can_pick_up_any_item unless predicate items:can_destroy_item/cursor run item replace entity @s hotbar.0 with air
execute in minecraft:overworld run item replace entity @s player.cursor with air
execute in minecraft:overworld run loot give @s mine 0 184 -16 stick[custom_data={drop_contents:true}]

## Remove force_mount tag (used by CK plugin)
tag @s remove force_mount

## Update statistics
execute if predicate game:phase/match/play run function custom:event/player_dies/update_statistics

## Mark projectiles as pre-death
tag @s add matchOrigin
execute as @e[type=#arrows] if function custom:match_origin run data modify entity @s data.pre_death_projectile set value true
execute as @e[type=tnt] if function custom:match_origin run data modify entity @s data.pre_death_projectile set value true
execute as @e[predicate=entities:type/icbm] if function custom:match_origin run data modify entity @s data.pre_death_projectile set value true
execute as @e[predicate=entities:type/nova_rocket/brain] if function custom:match_origin run data modify entity @s data.pre_death_projectile set value true
tag @s remove matchOrigin


## Achievements
scoreboard players set $can_grant_achievements var 0
execute if predicate game:phase/match/play if predicate game:achievements_can_be_awarded if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!NoModesInstalled,tag=!NoModesEnabled] run scoreboard players set $can_grant_achievements var 1

# So Close, Yet So Fall Away (if I am touching the floor of the enemy nether portal, award me)
execute if score $can_grant_achievements var matches 1 if entity @s[predicate=custom:team/blue,predicate=custom:entity/is_falling,predicate=custom:in_yellow_half,predicate=custom:standing_on_any_portal] run advancement grant @s only achievements:rr_challenges/fall_away
execute if score $can_grant_achievements var matches 1 if entity @s[predicate=custom:team/yellow,predicate=custom:entity/is_falling,predicate=custom:in_blue_half,predicate=custom:standing_on_any_portal] run advancement grant @s only achievements:rr_challenges/fall_away

# Volcanic Hatred (if I am inside of lava, award the owners of the nearby lava splash markers)
execute if score $can_grant_achievements var matches 1 if score $lava_death var matches 1 unless predicate game:match_components/neutral_items if entity @s[predicate=custom:team/blue] as @e[distance=..5,type=area_effect_cloud,tag=lavasplash_alone] on origin if entity @s[predicate=custom:team/yellow] run advancement grant @s only achievements:rr_challenges/volcanic_hatred
execute if score $can_grant_achievements var matches 1 if score $lava_death var matches 1 unless predicate game:match_components/neutral_items if entity @s[predicate=custom:team/yellow] as @e[distance=..5,type=area_effect_cloud,tag=lavasplash_alone] on origin if entity @s[predicate=custom:team/blue] run advancement grant @s only achievements:rr_challenges/volcanic_hatred
execute if score $can_grant_achievements var matches 1 if score $lava_death var matches 1 if predicate game:match_components/neutral_items if predicate custom:team/any_playing_team run tag @s add volcanic_hatred.victim
execute if score $can_grant_achievements var matches 1 if score $lava_death var matches 1 if predicate game:match_components/neutral_items if predicate custom:team/any_playing_team as @e[distance=..5,type=area_effect_cloud,tag=lavasplash_alone] on origin if entity @s[tag=!volcanic_hatred.victim,predicate=custom:team/any_playing_team] run advancement grant @s only achievements:rr_challenges/volcanic_hatred
execute if score $can_grant_achievements var matches 1 if score $lava_death var matches 1 if predicate game:match_components/neutral_items if predicate custom:team/any_playing_team run tag @s remove volcanic_hatred.victim

# Get Off My Lawn (if I am killed within 7 blocks of an enemy canopy, and my attacker is within 7 blocks of that same canopy, award the attacker)
execute if score $can_grant_achievements var matches 1 unless predicate game:match_components/neutral_items if entity @s[predicate=custom:team/blue] positioned as @n[distance=..7,predicate=entities:type/canopy/brain,predicate=entities:origin_team/yellow] on attacker if entity @s[distance=..7,predicate=custom:team/yellow] run advancement grant @s only achievements:rr_challenges/get_off_lawn
execute if score $can_grant_achievements var matches 1 unless predicate game:match_components/neutral_items if entity @s[predicate=custom:team/yellow] positioned as @n[distance=..7,predicate=entities:type/canopy/brain,predicate=entities:origin_team/blue] on attacker if entity @s[distance=..7,predicate=custom:team/blue] run advancement grant @s only achievements:rr_challenges/get_off_lawn
execute if score $can_grant_achievements var matches 1 if predicate game:match_components/neutral_items positioned as @n[distance=..7,predicate=entities:type/canopy/brain] on attacker if entity @s[distance=..7] run advancement grant @s only achievements:rr_challenges/get_off_lawn

# Revenge from the Grave
tag @s[tag=killed_from_pre_death_projectile] add primary_attacker_died
tag @s remove killed_from_pre_death_projectile
execute if score $can_grant_achievements var matches 1 if entity @s[tag=primary_attacker_died] run function custom:target_attackers/primary {run:"advancement grant @s only achievements:rr_challenges/revenge_from_grave"}
execute if score $can_grant_achievements var matches 1 if entity @s[tag=secondary_attacker_died] run function custom:target_attackers/secondary {run:"advancement grant @s only achievements:rr_challenges/revenge_from_grave"}

tag @s add match_attacker
execute as @e[x=0,type=player,predicate=custom:team/any_playing_team] if function custom:match_attacker/primary run tag @s add primary_attacker_died
execute as @e[x=0,type=player,predicate=custom:team/any_playing_team] if function custom:match_attacker/secondary run tag @s add secondary_attacker_died
tag @s remove match_attacker

tag @s remove primary_attacker_died
tag @s remove secondary_attacker_died


## Death-Specific
# Apply poison on respawn if the player breached the lobby
execute if predicate game:phase/match/play if predicate custom:team/any_playing_team run tag @s[predicate=custom:breaching_lobby] add on_respawn.apply_poison_effect

# Handle falling into the void
execute if predicate game:phase/match/play if predicate custom:team/any_playing_team if score $void_death var matches 1 run scoreboard players add @s FellVoid 1
execute if predicate game:phase/match/play if predicate custom:team/any_playing_team run tag @s[tag=crosser] add on_respawn.apply_crosser_void_fall_effects


## General
execute if predicate custom:player/is_nova_attached run function custom:player_action/trigger_nova_attach

tag @s add matchOrigin
execute as @e[x=0,predicate=entities:type/canopy_projectile/brain] if function custom:match_origin positioned as @s run function custom:event/player_dies/withdraw_canopy
tag @s remove matchOrigin

function custom:player_action/forget_canopy
function custom:player_action/forget_spell_emitter

tag @s remove onBlue
tag @s remove onYellow

tag @s remove beenOnBlue
tag @s remove beenOnYellow
tag @s remove beenOnBoth

execute if entity @s[tag=CarryFlag] run function custom:event/player_dies/restore_flag


## Forget previous damage origins and reset damage/attack timers
scoreboard players reset @s primary_damage_origin_uuid.0
scoreboard players reset @s primary_damage_origin_uuid.1
scoreboard players reset @s primary_damage_origin_uuid.2
scoreboard players reset @s primary_damage_origin_uuid.3
scoreboard players reset @s secondary_damage_origin_uuid.0
scoreboard players reset @s secondary_damage_origin_uuid.1
scoreboard players reset @s secondary_damage_origin_uuid.2
scoreboard players reset @s secondary_damage_origin_uuid.3
scoreboard players set @s time_since_damage 0
scoreboard players set @s time_since_attack 0


## If alive, instantly trigger respawn
tag @s add player_dies.this
execute unless entity @e[limit=1,x=0,type=player,tag=player_dies.this] run return run tag @s remove player_dies.this
tag @s remove player_dies.this
function custom:event/player_respawns/main
