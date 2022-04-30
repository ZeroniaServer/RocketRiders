######################################
## INGAME: Commands for what occurs ##
## during any game of Rocket Riders ##
######################################

##Stop games if empty (toggle)
execute if entity @s[tag=stopIfEmpty,scores={bluesCount=0,yellowsCount=0}] run function game:forcestop

##Actionbar delay (necessary for certain action bar messages to override others)
execute if entity @a[tag=DelayActionbar] run scoreboard players add @a[tag=DelayActionbar] actionbardelay 1
execute if entity @a[scores={actionbardelay=50..}] run tag @a[tag=DelayActionbar,scores={actionbardelay=50..}] remove DelayActionbar
execute if entity @a[scores={actionbardelay=50..}] run scoreboard players reset @a[scores={actionbardelay=50..}] actionbardelay

##Hotfix so Ground Bound achievement isn't broken
scoreboard players add @a[team=Yellow] jumps 0
scoreboard players add @a[team=Blue] jumps 0

##Hotfix so Pacifist achievement isn't broken
scoreboard players add @a[team=Yellow] kills 0
scoreboard players add @a[team=Blue] kills 0

##Prevent players from going above the arena
execute as @a[gamemode=!spectator,tag=!JoinBlue,tag=!JoinYellow] unless entity @s[team=!Yellow,team=!Blue] at @s in overworld if entity @s[y=181,dy=100] run function game:punishbreach

##Full hotbar check
function items:full_hotbar

##Game time
scoreboard players add @s gametime 1

##Put out players on fire
execute if entity @s[tag=GameStarted,scores={gametime=1..2}] as @a unless entity @s[team=!Yellow,team=!Blue] if entity @s[predicate=custom:is_on_fire] at @s run function game:putoutfire

##Enable fall damage (considers modifiers)
execute if entity @s[tag=GameStarted,tag=!NoFall,scores={gametime=10}] run gamerule fallDamage true

##Clear lobby arrows
execute if entity @s[tag=GameStarted,tag=!NoFall,scores={gametime=..4}] as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s arrow{Lobby:1b}

##Remove kills
execute if entity @s[tag=GameStarted,tag=!NoFall,scores={gametime=..4}] as @a unless entity @s[team=!Blue,team=!Yellow] run scoreboard players reset @s kills

##General everytick commands
function achievements:gain
function everytick:clear_spawnblocks
function everytick:no_fall
execute if entity @e[type=tnt_minecart] run function everytick:init_kill_carts
execute if entity @e[type=arrow] run function everytick:fire_arrow

##Spawnables
function everytick:spawnables

##Modifiers
function modifiers:modifiers

##Spawn trap hotfix
fill 14 63 66 10 63 66 obsidian
fill 13 63 65 11 63 65 obsidian
setblock 14 63 66 obsidian
setblock 10 63 66 obsidian
setblock 12 63 64 obsidian
execute if entity @s[tag=!customSpawn] run fill 13 65 67 11 65 67 obsidian
execute if entity @s[tag=!customSpawn] run setblock 12 66 67 obsidian
fill 11 63 -65 13 63 -66 obsidian
setblock 12 63 -64 obsidian
setblock 10 63 -66 obsidian
setblock 14 63 -66 obsidian
execute if entity @s[tag=!customSpawn] run fill 11 65 -67 13 65 -67 obsidian
execute if entity @s[tag=!customSpawn] run setblock 12 66 -67 obsidian

##Extra obsidian if necessary
execute if entity @s[tag=!customObsidian] run fill -15 64 67 39 64 67 obsidian
execute if entity @s[tag=!customObsidian] run fill -15 33 67 39 33 67 obsidian
execute if entity @s[tag=!customObsidian] run fill -15 64 -67 39 64 -67 obsidian
execute if entity @s[tag=!customObsidian] run fill -15 33 -67 39 33 -67 obsidian
execute if entity @s[tag=!customObsidian] run fill -15 63 67 -15 34 67 obsidian
execute if entity @s[tag=!customObsidian] run fill 39 63 67 39 34 67 obsidian
execute if entity @s[tag=!customObsidian] run fill -15 63 -67 -15 34 -67 obsidian
execute if entity @s[tag=!customObsidian] run fill 39 63 -67 39 34 -67 obsidian

#Fix for Hole in One
execute if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill -11 59 73 34 36 75 obsidian outline
execute if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill 1 48 73 1 47 73 air
execute if entity @s[scores={PortalDeco=4},tag=!portalDecosOff] run fill 23 48 73 23 47 73 air

##Respawn handling
execute as @e[type=marker,tag=YellowSpawnZone] at @s as @a[team=Yellow,distance=..6,scores={respawn=1..}] at @s run tp @s ~ ~ ~ -180 0
execute as @e[type=marker,tag=YellowSpawnZone] at @s as @a[team=Yellow,tag=FellInVoid,distance=..6,scores={respawn=1..}] run scoreboard players add @s FellVoid 1
execute as @e[type=marker,tag=YellowSpawnZone] at @s as @a[team=Yellow,tag=FellInVoid,distance=..6,scores={respawn=1..}] run tag @s remove FellInVoid
execute as @e[type=marker,tag=BlueSpawnZone] at @s as @a[team=Blue,tag=FellInVoid,distance=..6,scores={respawn=1..}] run scoreboard players add @s FellVoid 1
execute as @e[type=marker,tag=BlueSpawnZone] at @s as @a[team=Blue,tag=FellInVoid,distance=..6,scores={respawn=1..}] run tag @s remove FellInVoid
execute unless entity @s[tag=respawnFlag] unless entity @s[tag=runcanopy] as @e[type=marker,tag=YellowSpawnZone] at @s run scoreboard players set @a[team=Yellow,tag=!beenOnBlue,distance=..6] respawn 0
execute unless entity @s[tag=respawnFlag] unless entity @s[tag=runcanopy] as @e[type=marker,tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,tag=!beenOnYellow,distance=..6] respawn 0
tag @a[team=!Yellow,team=!Blue] remove FellInVoid
scoreboard players reset @a[team=!Yellow,team=!Blue] respawn

##Hotfix for Canopy respawns
tag @s[tag=runcanopy] remove runcanopy

##Hotfix for crossbows
scoreboard players reset @a LaunchCrossbow