######################################
## INGAME: Commands for what occurs ##
## during any game of Rocket Riders ##
######################################

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

##General everytick commands
function achievements:gain
function everytick:clear_spawnblocks
function everytick:no_fall
function modifiers:modifiers

##Missile/utility-specific commands (optimized to only run when necessary)
execute unless entity @s[tag=runspawnmissiles] if entity @e[tag=missile,type=area_effect_cloud] run tag @s add runspawnmissiles
execute unless entity @s[tag=runspawnmissiles] if entity @e[tag=surprising,type=area_effect_cloud] run tag @s add runspawnmissiles
execute if entity @s[tag=runspawnmissiles] run function items:spawnmissiles
tag @s[tag=runspawnmissiles] remove runspawnmissiles

execute unless entity @s[tag=runshields] if entity @e[type=snowball] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[tag=PlaceYellowShield,type=area_effect_cloud] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[tag=PlaceBlueShield,type=area_effect_cloud] run tag @s add runshields
execute if entity @s[tag=runshields] run function everytick:shields
tag @s[tag=runshields] remove runshields

execute unless entity @s[tag=runvortex] if entity @e[type=egg] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[tag=Vortex,type=area_effect_cloud] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[tag=VortexItem,type=armor_stand] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[type=chicken] run tag @s add runvortex
execute if entity @s[tag=runvortex] run function everytick:vortex
tag @s[tag=runvortex] remove runvortex

execute unless entity @s[tag=runobshields] if entity @e[tag=obfireball,type=fireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=obfireball,type=dragon_fireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=BlueObshield,type=area_effect_cloud] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=blueobtracker,type=armor_stand] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=blueobsidianshield,type=area_effect_cloud] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=YellowObshield,type=area_effect_cloud] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=yellowobtracker,type=armor_stand] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[tag=yellowobsidianshield,type=area_effect_cloud] run tag @s add runobshields
execute if entity @s[tag=runobshields] run function everytick:obsidian_shields
tag @s[tag=runobshields] remove runobshields

execute unless entity @s[tag=runcanopy] if entity @e[type=ender_pearl] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[tag=YellowPlatform,type=area_effect_cloud] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[tag=BluePlatform,type=area_effect_cloud] run tag @s add runcanopy
execute if entity @s[tag=runcanopy] run function everytick:canopy
tag @s[tag=runcanopy] remove runcanopy

execute unless entity @s[tag=runnovarocket] if entity @e[type=firework_rocket] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @e[tag=novatracker,type=armor_stand] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=BlueNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=YellowNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=BlueNovaNear] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[tag=YellowNovaNear] run tag @s add runnovarocket
execute if entity @s[tag=runnovarocket] run function everytick:novarocket
tag @s[tag=runnovarocket] remove runnovarocket

execute unless entity @s[tag=runfireball] if entity @e[type=fireball,tag=!obfireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[tag=BlueFireball,type=area_effect_cloud] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[tag=YellowFireball,type=area_effect_cloud] run tag @s add runfireball
execute if entity @s[tag=runfireball] run function everytick:fireball
tag @s[tag=runfireball] remove runfireball

function everytick:splash

##Spawn trap hotfix
fill 14 63 66 10 63 66 obsidian
fill 13 63 65 11 63 65 obsidian
setblock 14 63 66 obsidian
setblock 10 63 66 obsidian
setblock 12 63 64 obsidian
fill 13 65 67 11 65 67 obsidian
setblock 12 66 67 obsidian
fill 11 63 -65 13 63 -66 obsidian
setblock 12 63 -64 obsidian
setblock 10 63 -66 obsidian
setblock 14 63 -66 obsidian
fill 11 65 -67 13 65 -67 obsidian
setblock 12 66 -67 obsidian

##Respawn handling
execute as @e[tag=YellowSpawnZone] at @s run scoreboard players set @e[type=player,distance=..6] respawn 0
execute as @e[tag=BlueSpawnZone] at @s run scoreboard players set @e[type=player,distance=..6] respawn 0
scoreboard players reset @a[team=!Yellow,team=!Blue] respawn