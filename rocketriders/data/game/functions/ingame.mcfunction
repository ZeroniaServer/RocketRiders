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

##Prevent players from going above the arena
execute as @a[gamemode=!spectator] unless entity @s[team=!Yellow,team=!Blue] if entity @s[tag=!JoinBlue,tag=!JoinYellow] at @s in overworld if entity @s[y=181,dy=100] run function game:punishbreach

##Game time
scoreboard players add @s gametime 1

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

##Missile/utility-specific commands (optimized to only run when necessary)
execute unless entity @s[tag=runspawnmissiles] if entity @e[type=marker,tag=missile] run tag @s add runspawnmissiles
execute unless entity @s[tag=runspawnmissiles] if entity @e[type=marker,tag=surprising] run tag @s add runspawnmissiles
execute if entity @s[tag=runspawnmissiles] run function items:spawnmissiles
tag @s[tag=runspawnmissiles] remove runspawnmissiles

execute unless entity @s[tag=runshields] if entity @e[type=snowball] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[type=marker,tag=PlaceYellowShield] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[type=marker,tag=PlaceBlueShield] run tag @s add runshields
execute if entity @s[tag=runshields] run function everytick:shields
tag @s[tag=runshields] remove runshields

execute unless entity @s[tag=runvortex] if entity @e[type=egg] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=marker,tag=Vortex] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=armor_stand,tag=VortexItem] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=chicken] run tag @s add runvortex
execute if entity @s[tag=runvortex,tag=!vortexOverride] run function everytick:vortex
tag @s[tag=runvortex] remove runvortex

execute unless entity @e[type=marker,tag=Vortex] unless entity @e[type=armor_stand,tag=VortexItem] run scoreboard players set $highest VortexID 0

execute unless entity @s[tag=runobshields] if entity @e[type=fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=dragon_fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=BlueObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=blueobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=blueobsidianshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=YellowObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=yellowobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[type=marker,tag=yellowobsidianshield] run tag @s add runobshields
execute if entity @s[tag=runobshields] run function everytick:obsidian_shields
tag @s[tag=runobshields] remove runobshields

execute unless entity @s[tag=runnovarocket] if entity @e[type=firework_rocket] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @e[type=marker,tag=novatracker] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=BlueNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=YellowNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=BlueNovaNear] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=YellowNovaNear] run tag @s add runnovarocket
execute if entity @s[tag=runnovarocket] run function everytick:novarocket
tag @s[tag=runnovarocket] remove runnovarocket
#Attachment reset (both)
scoreboard players reset @a[tag=!YellowNovaAttach,tag=!BlueNovaAttach] novattach
scoreboard players reset @a[scores={novattach=15..}] novattach
scoreboard players reset @a[team=!Yellow,team=!Blue] novattach
tag @a[team=!Yellow,team=!Blue] remove BlueNovaAttach
tag @a[team=!Yellow,team=!Blue] remove YellowNovaAttach

execute unless entity @s[tag=runcanopy] if entity @e[type=ender_pearl] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[type=marker,tag=YellowPlatform] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[type=marker,tag=BluePlatform] run tag @s add runcanopy
execute if entity @s[tag=runcanopy] run function everytick:canopy
#Near Canopy check
tag @a remove nearcanopy
execute if entity @s[tag=runcanopy] as @a[team=Blue] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..7] run tag @s add nearcanopy
execute if entity @s[tag=runcanopy] as @a[team=Yellow] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7] run tag @s add nearcanopy
execute if entity @s[tag=runcanopy,tag=onlyBlue] as @a[team=Blue] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7] run tag @s add nearcanopy

execute unless entity @s[tag=runfireball] if entity @e[type=fireball,tag=!obfireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[type=marker,tag=BlueFireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[type=marker,tag=YellowFireball] run tag @s add runfireball
execute if entity @s[tag=runfireball] run function everytick:fireball
tag @s[tag=runfireball] remove runfireball

function everytick:splash

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

##Respawn handling
execute as @e[type=marker,tag=YellowSpawnZone] at @s as @a[team=Yellow,distance=..6,scores={respawn=1..}] at @s run tp @s ~ ~ ~ -180 0
execute unless entity @s[tag=respawnFlag] unless entity @s[tag=runcanopy] as @e[type=marker,tag=YellowSpawnZone] at @s run scoreboard players set @a[team=Yellow,tag=!beenOnBlue,distance=..6] respawn 0
execute unless entity @s[tag=respawnFlag] unless entity @s[tag=runcanopy] as @e[type=marker,tag=BlueSpawnZone] at @s run scoreboard players set @a[team=Blue,tag=!beenOnYellow,distance=..6] respawn 0
scoreboard players reset @a[team=!Yellow,team=!Blue] respawn

##Hotfix for Canopy respawns
tag @s[tag=runcanopy] remove runcanopy

##Hotfix for crossbows
scoreboard players reset @a LaunchCrossbow