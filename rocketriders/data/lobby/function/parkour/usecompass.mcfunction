execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run scoreboard players add @s chkpntCooldown 0
execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run scoreboard players set @s[scores={chkpntCooldown=0}] chkpntCooldown 1
execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run tellraw @s[scores={chkpntCooldown=1}] ["",{"text":"Returned to Checkpoint ","color":"dark_green"},{"score":{"name":"@s","objective":"checkpoint"},"color":"green","bold":true},{"text":".","color":"dark_green"}]
execute unless score @s[team=Lobby,tag=inParkour] impulse_cooldown matches 1.. run tag @s[scores={chkpntCooldown=1}] add returnCheckpoint

advancement revoke @s only lobby:use_compass
advancement revoke @s only lobby:compass_cooldown
scoreboard players set @s impulse_cooldown 2