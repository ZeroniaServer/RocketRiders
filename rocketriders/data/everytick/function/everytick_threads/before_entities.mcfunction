####################################
## EVERYTICK: Where everything in ##
## the core RR Datapack runs from ##
####################################

# Store this tick's gametime (+1 because #tick functions run before gametime increments for this tick)
execute store result score $gametime global run time query gametime
scoreboard players add $gametime global 1

# In case of transitioning_phase flag getting stuck while developing
scoreboard players reset $transitioning_phase global

# Resolve `$max_players_per_team global` score in case config scoreboard is edited manually.
function everytick:resolve_max_players_per_team

# Global Periodic Tick
scoreboard players add #periodic_tick.2 global 1
scoreboard players operation #periodic_tick.2 global %= $2 constant
scoreboard players add #periodic_tick.3 global 1
scoreboard players operation #periodic_tick.3 global %= $3 constant
scoreboard players add #periodic_tick.5 global 1
scoreboard players operation #periodic_tick.5 global %= $5 constant
scoreboard players add #periodic_tick.20 global 1
scoreboard players operation #periodic_tick.20 global %= $20 constant

## Handle events and flags
# force_mount tag is used by the CK plugin to prevent dismounting
tag @a[x=0] remove force_mount

# Joining/leaving
scoreboard players operation $previous_players_online var = $players_online global
execute store result score $players_online global if entity @a[x=0,predicate=!custom:player/just_joined_world]
execute store success score $players_have_left var if score $players_online global < $previous_players_online var
execute store result score $players_online global if entity @a[x=0]
execute if score $players_have_left var matches 1 in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function custom:event/number_of_players_decreases/main
execute as @e[x=25,y=184,z=-6,dx=0,dy=0,dz=0,type=area_effect_cloud,tag=player_monitoring] run function everytick:player_monitoring/check
execute as @a[x=0,predicate=custom:player/just_joined_world] at @s run function custom:event/player_joins_overworld/main

execute as @a[x=0,scores={time_since_joined_overworld=1},predicate=custom:team/lobby] at @s run function everytick:welcome_titles

function everytick:team_count

execute store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]

# Handle respawning
execute as @e[x=0,type=player,tag=is_dead] at @s run function custom:event/player_respawns/main
tag @a[x=0] add is_dead
tag @e[x=0,type=player] remove is_dead

# Handle instant item use
execute as @a[x=0,scores={event.player_uses_pig_spawn_egg=1..}] at @s run function custom:event/player_uses_pig_spawn_egg/main
execute as @a[x=0,scores={event.player_uses_writable_book=1..}] at @s run function custom:event/player_uses_writable_book/main
execute as @a[x=0,scores={event.player_uses_written_book=1..}] at @s run function custom:event/player_uses_written_book/main

# Handle damage origins
execute as @a[x=0,scores={time_since_attack=101..,primary_damage_origin_uuid.0=-2147483648..}] run function custom:event/player_directly_attacked_by_another_player/reset_damage_origins
execute as @a[x=0,scores={time_since_attack=101..,secondary_damage_origin_uuid.0=-2147483648..}] run function custom:event/player_directly_attacked_by_another_player/reset_damage_origins

# Teleport sounds
execute as @a[x=0,tag=teleport_sound] at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 1 1 1
tag @a[x=0,tag=teleport_sound] remove teleport_sound

# Item Effects
scoreboard players remove @a[x=0,scores={effects.infinity_saber.time=1..2147483646}] effects.infinity_saber.time 1
execute as @a[x=0,scores={effects.infinity_saber.time=..0}] run function items:effects/infinity_saber/remove

scoreboard players remove @a[x=0,scores={effects.multishot_saber.time=1..2147483646}] effects.multishot_saber.time 1
execute as @a[x=0,scores={effects.multishot_saber.time=..0}] run function items:effects/multishot_saber/remove

execute as @a[x=0,predicate=items:effects/elytra/on,predicate=custom:team/any_playing_team,gamemode=!spectator,predicate=items:deactivate_elytra] run function items:effects/elytra/remove

# Thrown items
execute as @e[x=0,type=item,tag=!item_entity.processed] at @s run function everytick:item_entity/init
execute as @e[x=0,type=item,predicate=custom:item_entity/contains_droppable_item] at @s run function everytick:item_entity/while_contents_is_droppable_item

# Geysers
execute if predicate game:feature_flags/geysers/on if predicate game:phase/match run function everytick:geyser
