#leave midgame
scoreboard players enable @a[x=0] LeaveMidgame
tellraw @a[x=0,team=Blue,scores={dropBook=1..}] [{"text":"Are you sure you want to leave the match? ","color":"dark_aqua"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[x=0,team=Yellow,scores={dropBook=1..}] [{"text":"Are you sure you want to leave the match? ","color":"yellow"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[x=0,scores={dropBook=1..}] dropBook 0
execute as @a[x=0,team=Blue,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"dark_aqua"}]
scoreboard players set @a[x=0,team=Blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[x=0,team=Yellow,scores={LeaveMidgame=1}] run tellraw @a[x=0] [{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[x=0,team=Yellow,scores={LeaveMidgame=1}] LeaveGame 1
tellraw @s[team=!Blue,team=!Yellow,scores={LeaveMidgame=1}] [{"text":"You are not in a match anymore.","color":"green"}]

#destroy crafting slots
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] if items entity @s player.crafting.* * at @s run function rr_sandbox:game/destroycraftingslots

#spawnpoints
execute as @a[x=0,team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[x=0,team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#spawnables
function rr_powerups:everytick/spawnables
function rr_powerups:everytick/powerups
function everytick:cluster
execute if entity @e[x=0,type=arrow] run function rr_powerups:everytick/tipped_arrow_pickup

#nomicon
execute as @a[x=0,team=!Lobby,team=!Spectator] run scoreboard players enable @s nomicon
execute as @a[predicate=!custom:indimension] run trigger nomicon set 0
execute as @a[x=0,team=!Blue,team=!Yellow,team=!Developer] run trigger nomicon set 0
execute as @a[x=0,team=!Lobby,team=!Spectator] run scoreboard players enable @s nomiconstack
execute as @a[predicate=!custom:indimension] run trigger nomiconstack set 0
execute as @a[x=0,team=!Blue,team=!Yellow,team=!Developer] run trigger nomiconstack set 0
execute as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,scores={nomicon=1..}] run function rr_sandbox:game/nomicon
execute as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,scores={nomiconstack=1..}] run function rr_sandbox:game/nomiconstack
scoreboard players reset #size sbstackamt

#win
execute if block 13 38 74 air run function rr_sandbox:game/winblue
execute if block 11 38 74 air run function rr_sandbox:game/winblue

execute if block 11 38 -74 air run function rr_sandbox:game/winyellow
execute if block 13 38 -74 air run function rr_sandbox:game/winyellow