##Missile/utility-specific commands (optimized to only run when necessary)
execute unless entity @s[tag=runspawnmissiles] if entity @e[x=0,type=marker,tag=missile] run tag @s add runspawnmissiles
execute unless entity @s[tag=runspawnmissiles] if entity @e[x=0,type=marker,tag=surprising] run tag @s add runspawnmissiles
execute if entity @s[tag=runspawnmissiles] as @e[x=0,type=marker,tag=missile] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute if entity @s[tag=runspawnmissiles] as @e[x=0,type=marker,tag=missile] at @s run function items:spawnmissiles
tag @s[tag=runspawnmissiles] remove runspawnmissiles

execute as @e[x=0,type=marker,tag=hyperExtra] run function items:hyperextra

execute unless entity @s[tag=runshields] if entity @e[x=0,type=snowball] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[x=0,type=marker,tag=PlaceYellowShield] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[x=0,type=marker,tag=PlaceBlueShield] run tag @s add runshields
execute if entity @s[tag=runshields] run function everytick:shields
tag @s[tag=runshields] remove runshields

execute unless entity @s[tag=runvortex] if entity @e[x=0,type=egg,nbt={Item:{tag:{icbm:0b}}}] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[x=0,type=marker,tag=Vortex] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[x=0,type=armor_stand,tag=VortexItem] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[x=0,type=chicken] run tag @s add runvortex
execute if entity @s[tag=runvortex,tag=!vortexOverride] run function everytick:vortex
tag @s[tag=runvortex] remove runvortex

execute unless entity @e[x=0,type=marker,tag=Vortex] unless entity @e[x=0,type=armor_stand,tag=VortexItem] run scoreboard players set $highest VortexID 0

execute unless entity @s[tag=runobshields] if entity @e[x=0,type=fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=dragon_fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=BlueObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=blueobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=blueobsidianshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=YellowObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=yellowobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=yellowobsidianshield] run tag @s add runobshields
execute if entity @s[tag=runobshields] run function everytick:obsidian_shields
tag @s[tag=runobshields] remove runobshields

execute unless entity @s[tag=runnovarocket] if entity @e[x=0,type=firework_rocket] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @e[x=0,type=marker,tag=novatracker] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[x=0,tag=BlueNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[x=0,tag=YellowNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[x=0,tag=BlueNovaNear] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[x=0,tag=YellowNovaNear] run tag @s add runnovarocket
execute if entity @s[tag=runnovarocket] run function everytick:novarocket
tag @s[tag=runnovarocket] remove runnovarocket
#Attachment reset (both)
scoreboard players reset @a[x=0,tag=!YellowNovaAttach,tag=!BlueNovaAttach] novattach
scoreboard players reset @a[x=0,scores={novattach=15..},nbt={OnGround:1b}] novattach
scoreboard players reset @a[x=0,team=!Yellow,team=!Blue] novattach
tag @a[x=0,team=!Yellow,team=!Blue] remove BlueNovaAttach
tag @a[x=0,team=!Yellow,team=!Blue] remove YellowNovaAttach

execute unless entity @s[tag=runcanopy] if entity @e[x=0,type=ender_pearl] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[x=0,type=marker,tag=YellowPlatform] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[x=0,type=marker,tag=BluePlatform] run tag @s add runcanopy
execute if entity @s[tag=runcanopy] run function everytick:canopy
#Near Canopy check
tag @a[x=0] remove nearcanopy
execute if entity @s[tag=runcanopy] as @a[x=0,team=Blue] at @s if entity @e[type=marker,tag=YellowPlatform,distance=..7] run tag @s add nearcanopy
execute if entity @s[tag=runcanopy] as @a[x=0,team=Yellow] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7] run tag @s add nearcanopy
execute if entity @s[tag=runcanopy,tag=onlyBlue] as @a[x=0,team=Blue] at @s if entity @e[type=marker,tag=BluePlatform,distance=..7] run tag @s add nearcanopy

execute unless entity @s[tag=runfireball] if entity @e[x=0,type=fireball,tag=!obfireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[x=0,type=marker,tag=BlueFireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[x=0,type=marker,tag=YellowFireball] run tag @s add runfireball
execute if entity @s[tag=runfireball] run function everytick:fireball
tag @s[tag=runfireball] remove runfireball

function everytick:splash

execute unless entity @s[tag=runicbm] if entity @e[x=0,type=egg,nbt={Item:{tag:{icbm:1b}}}] run tag @s add runicbm
execute unless entity @s[tag=runicbm] if entity @e[x=0,type=marker,tag=ICBMtracker] run tag @s add runicbm
execute unless entity @s[tag=runicbm] if entity @a[x=0,scores={respawn=1..},tag=UtilKilled] run tag @s add runicbm
execute if entity @s[tag=runicbm] run function everytick:icbm
tag @s[tag=runicbm] remove runicbm