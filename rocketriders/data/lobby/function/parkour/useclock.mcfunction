execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run tellraw @s [{"text":"You quit the Parkour. Returning to the start.","color":"red"}]
execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run scoreboard players set @s LobbyWarp 7
execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run tag @s remove inParkour

advancement revoke @s only lobby:use_clock
advancement revoke @s only lobby:clock_cooldown
scoreboard players set @s impulse_cooldown 2