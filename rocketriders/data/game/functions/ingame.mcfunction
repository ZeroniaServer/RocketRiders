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
execute as @a[gamemode=!spectator] unless entity @s[team=!Yellow,team=!Blue] if entity @s[tag=!JoinBlue,tag=!JoinYellow] at @s in overworld if entity @s[y=181,dy=100] run function game:punishbreach

#game time
scoreboard players add @s gametime 1

#general everytick commands
function achievements:gain
function everytick:clear_spawnblocks
function everytick:no_fall
function everytick:modifiers

#missile/util specific commands (optimized to only run when necessary)
execute unless entity @s[tag=runspawnmissiles] if entity @e[tag=missile] run tag @s add runspawnmissiles
execute unless entity @s[tag=runspawnmissiles] if entity @e[tag=surprising] run tag @s add runspawnmissiles
execute if entity @s[tag=runspawnmissiles] run function items:spawnmissiles
tag @s[tag=runspawnmissiles] remove runspawnmissiles

execute unless entity @s[tag=runshields] if entity @e[type=snowball] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[tag=YellowShield] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[tag=PlaceYellowShield] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[tag=BlueShield] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[tag=PlaceBlueShield] run tag @s add runshields
execute if entity @s[tag=runshields] run function everytick:shields
tag @s[tag=runshields] remove runshields

execute unless entity @s[tag=runvortex] if entity @e[type=egg] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[tag=Vortex] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[tag=VortexItem] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=chicken] run tag @s add runvortex
execute if entity @s[tag=runvortex] run function everytick:vortex
tag @s[tag=runvortex] remove runvortex

execute unless entity @s[tag=runobshields] if entity @e[tag=BlueObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=blueobfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=blueobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=blueobsidianshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=YellowObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=yellowobfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=yellowobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=yellowobsidianshield] run tag @s add runobshields
execute if entity @s[tag=runobshields] run function everytick:obsidian_shields
tag @s[tag=runobshields] remove runobshields

execute unless entity @s[tag=runcanopy] if entity @e[type=ender_pearl] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[tag=YellowPlat] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[tag=YellowPlatform] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[tag=BluePlat] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[tag=BluePlatform] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[tag=Platform] run tag @s add runcanopy
execute if entity @s[tag=runcanopy] run function everytick:canopy
tag @s[tag=runcanopy] remove runcanopy

execute unless entity @s[tag=runnovarocket] if entity @e[type=firework_rocket] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @e[tag=BlueNova] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @e[tag=YellowNova] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @e[tag=novatracker] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=BlueNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=YellowNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=BlueNovaNear] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=YellowNovaNear] run tag @s add runnovarocket
execute if entity @s[tag=runnovarocket] run function everytick:novarocket
tag @s[tag=runnovarocket] remove runnovarocket

execute unless entity @s[tag=runfireball] if entity @e[type=fireball,tag=!obfireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[tag=BlueFireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[tag=YellowFireball] run tag @s add runfireball
execute if entity @s[tag=runfireball] run function everytick:fireball
tag @s[tag=runfireball] remove runfireball

function everytick:splash

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