#leave midgame
scoreboard players enable @a[x=0] LeaveMidgame
tellraw @a[x=0,team=Blue,scores={dropBook=1..}] [{"text":"Are you sure you want to leave the match? ","color":"blue"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[x=0,team=Yellow,scores={dropBook=1..}] [{"text":"Are you sure you want to leave the match? ","color":"gold"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[x=0,scores={dropBook=1..}] dropBook 0
execute as @a[x=0,team=Blue,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"aqua"}]
scoreboard players set @a[x=0,team=Blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[x=0,team=Yellow,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[x=0,team=Yellow,scores={LeaveMidgame=1}] LeaveGame 1
tellraw @s[team=!Blue,team=!Yellow,scores={LeaveMidgame=1}] [{"text":"You are not in a match anymore.","color":"green"}]

#spawnpoints
execute as @a[x=0,team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[x=0,team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#spawnables
function rr_powerups:everytick/spawnables
function rr_powerups:everytick/powerups
function everytick:cluster

#nomicon
execute as @a[x=0,team=!Lobby,team=!Spectator] run scoreboard players enable @s nomicon
execute as @a[predicate=!custom:indimension] run trigger nomicon set 0
execute as @a[x=0,team=!Blue,team=!Yellow,team=!Developer] run trigger nomicon set 0
execute as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,scores={nomicon=1..}] run function rr_sandbox:game/nomicon

#win
execute if block 13 38 74 air run function rr_sandbox:game/winblue
execute if block 11 38 74 air run function rr_sandbox:game/winblue

execute if block 11 38 -74 air run function rr_sandbox:game/winyellow
execute if block 13 38 -74 air run function rr_sandbox:game/winyellow