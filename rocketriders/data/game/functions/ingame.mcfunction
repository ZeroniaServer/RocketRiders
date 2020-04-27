#actionbar delay (necessary for certain action bar messages to override others)
execute if entity @a[tag=DelayActionbar] run scoreboard players add @a[tag=DelayActionbar] actionbardelay 1
execute if entity @a[scores={actionbardelay=50..}] run tag @a[tag=DelayActionbar,scores={actionbardelay=50..}] remove DelayActionbar
execute if entity @a[scores={actionbardelay=50..}] run scoreboard players reset @a[scores={actionbardelay=50..}] actionbardelay

#hotfix so groundbound isn't broken
scoreboard players add @a[team=Yellow] jumps 0
scoreboard players add @a[team=Blue] jumps 0

#hotfix for lobby arrows
clear @a[team=Yellow] arrow{Lobby:1b}
clear @a[team=Blue] arrow{Lobby:1b}

#prevent players from going above the arena
execute as @a unless entity @s[team=!Yellow,team=!Blue] if entity @s[tag=!JoinBlue,tag=!JoinYellow] at @s in overworld if entity @s[y=181,dy=100] run function game:punishbreach

#general everytick commands
function challenges:gain
function items:spawnmissiles
function everytick:achievement_gain
function everytick:shields
function everytick:vortex
function everytick:obsidian_shields
function everytick:canopy
function everytick:splash
function everytick:novarocket
function everytick:clear_spawnblocks
function everytick:no_fall

#spawntrap hotfix
execute unless block 12 63 -66 obsidian run setblock 12 63 -66 obsidian
execute unless block 12 63 66 obsidian run setblock 12 63 66 obsidian

#respawn hotfix
execute as @a[team=Yellow,scores={respawn=1..}] at @s if entity @e[tag=YellowSpawnZone,distance=..3] run tp @s ~ ~ ~ 180 0
execute as @a[team=Blue,scores={respawn=1..}] at @s if entity @e[tag=BlueSpawnZone,distance=..3] run tp @s ~ ~ ~ 0 0
execute as @e[tag=YellowSpawnZone] at @s run scoreboard players set @e[type=player,distance=..6] respawn 0
execute as @e[tag=BlueSpawnZone] at @s run scoreboard players set @e[type=player,distance=..6] respawn 0

#hotfix for yellow team join wrong facing direction
scoreboard players reset @a[team=!Yellow,team=!Blue] respawn