####################################
## EVERYTICK: Where everything in ##
## the core RR Datapack runs from ##
####################################

# Store this tick's gametime (+1 because #tick functions run before gametime increments for this tick)
execute store result score $gametime global run function custom:get_gametime
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
execute store result score $players_online global if entity @a[x=0,predicate=!custom:just_joined_world]
execute store success score $players_have_left var if score $players_online global < $previous_players_online var
execute store result score $players_online global if entity @a[x=0]
execute if score $players_have_left var matches 1 in minecraft:overworld positioned 0.0 0.0 0.0 as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function custom:event/number_of_players_decreases/main
execute as @e[x=25,y=184,z=-6,dx=0,dy=0,dz=0,type=area_effect_cloud,tag=player_monitoring] run function everytick:player_monitoring/check
execute as @a[x=0,predicate=custom:just_joined_world] at @s run function custom:event/player_joins_overworld/main

execute as @a[x=0,scores={time_since_joined_overworld=1},predicate=custom:team/lobby] at @s run function everytick:welcome_titles

function everytick:team_count

execute store result score $players_in_lobby global if entity @a[x=0,predicate=custom:team/lobby]

# Handle respawning
execute as @e[x=0,type=player,scores={flag.is_dead=1}] at @s run function custom:event/player_respawns/main
scoreboard players set @a[x=0] flag.is_dead 1
scoreboard players set @e[x=0,type=player] flag.is_dead 0

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

# Item timers
scoreboard players remove @a[x=0,scores={shooting_saber.infinity_time=1..2147483646}] shooting_saber.infinity_time 1
execute as @a[x=0,scores={shooting_saber.infinity_time=..0}] run function items:shooting_saber/infinity_deactivate
scoreboard players remove @a[x=0,scores={shooting_saber.multishot_time=1..2147483646}] shooting_saber.multishot_time 1
execute as @a[x=0,scores={shooting_saber.multishot_time=..0}] run function items:shooting_saber/multishot_deactivate
scoreboard players remove @a[x=0,scores={elytra_time=1..2147483646}] elytra_time 1
execute as @a[x=0,scores={elytra_time=..0}] run function items:elytra/deactivate
execute as @a[x=0,predicate=items:elytra/elytra,predicate=custom:team/any_playing_team,gamemode=!spectator,predicate=items:deactivate_elytra] run function items:elytra/deactivate

# Thrown items
execute as @e[x=0,type=item,tag=!item_entity.processed] at @s run function everytick:item_entity/init
execute as @e[x=0,type=item,predicate=custom:item_entity_contains_droppable_item] at @s run function everytick:item_entity/while_contents_is_droppable_item
