advancement revoke @s only custom:event/player_directly_attacked_by_another_player
# If the player was directly killed by an attack from a player or their explosions/mobs, This always triggers before the player_dies event.
# If the player was non-fatally directly attacked by a player or hurt by their explosions/mobs, this will trigger in an arbitrary order with player_non_fatally_hurt.

execute if function custom:event/player_directly_attacked_by_another_player/update_damage_origins run scoreboard players set @s time_since_attack 0
