scoreboard players add @s deaths 1
scoreboard players add @s respawn 1

advancement grant @s only custom:event/player_dies die_void

execute at @s run playsound minecraft:entity.player.hurt player @s