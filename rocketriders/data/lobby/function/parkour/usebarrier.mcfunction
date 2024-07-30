execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run tellraw @s [{"text":"You quit the Parkour. Returning to the Lobby.","color":"red"}]
execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run scoreboard players set @s LobbyWarp 1
execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run tag @s remove inParkour

advancement revoke @s only lobby:use_barrier
advancement revoke @s only lobby:barrier_cooldown
scoreboard players set @s impulse_cooldown 2