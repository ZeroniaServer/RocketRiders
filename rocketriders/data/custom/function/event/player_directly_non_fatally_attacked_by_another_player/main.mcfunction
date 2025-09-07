advancement revoke @s only custom:event/player_directly_non_fatally_attacked_by_another_player

tag @s add player_directly_killed_by_another_player.this
scoreboard players set $skip var 0
execute on attacker if entity @s[tag=player_directly_killed_by_another_player.this] run scoreboard players set $skip var 1
execute on attacker if entity @s[type=creeper] run function custom:target_uuid {read_from:"entity @s data.explosion.origin",run:"execute unless entity @s[type=player,tag=!player_directly_killed_by_another_player.this] run scoreboard players set $skip var 1"}
tag @s remove player_directly_killed_by_another_player.this
execute if score $skip var matches 1 run return fail

#
tag @s remove attacker_died
