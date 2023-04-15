##Missile/utility-specific commands (optimized to only run when necessary)
execute unless entity @s[tag=runspawnmissiles] if entity @e[predicate=custom:indimension,type=marker,tag=missile] run tag @s add runspawnmissiles
execute unless entity @s[tag=runspawnmissiles] if entity @e[predicate=custom:indimension,type=marker,tag=surprising] run tag @s add runspawnmissiles
execute if entity @s[tag=runspawnmissiles] as @e[predicate=custom:indimension,type=marker,tag=missile] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute if entity @s[tag=runspawnmissiles] as @e[predicate=custom:indimension,type=marker,tag=missile] at @s run function items:spawnmissiles
tag @s[tag=runspawnmissiles] remove runspawnmissiles

execute as @e[predicate=custom:indimension,type=marker,tag=hyperExtra] run function items:hyperextra

execute unless entity @s[tag=runshields] if entity @e[predicate=custom:indimension,type=snowball] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[predicate=custom:indimension,type=marker,tag=PlaceYellowShield] run tag @s add runshields
execute unless entity @s[tag=runshields] if entity @e[predicate=custom:indimension,type=marker,tag=PlaceBlueShield] run tag @s add runshields
execute if entity @s[tag=runshields] run function everytick:shields
tag @s[tag=runshields] remove runshields

execute unless entity @s[tag=runvortex] if entity @e[predicate=custom:indimension,type=egg,nbt={Item:{tag:{icbm:0b}}}] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[predicate=custom:indimension,type=marker,tag=Vortex] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[predicate=custom:indimension,type=armor_stand,tag=VortexItem] run tag @s add runvortex
execute unless entity @s[tag=runvortex] if entity @e[predicate=custom:indimension,type=chicken] run tag @s add runvortex
execute if entity @s[tag=runvortex,tag=!vortexOverride] run function everytick:vortex
tag @s[tag=runvortex] remove runvortex

execute unless entity @e[predicate=custom:indimension,type=marker,tag=Vortex] unless entity @e[predicate=custom:indimension,type=armor_stand,tag=VortexItem] run scoreboard players set $highest VortexID 0

execute unless entity @s[tag=runobshields] if entity @e[predicate=custom:indimension,type=fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[predicate=custom:indimension,type=dragon_fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[predicate=custom:indimension,type=marker,tag=BlueObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[predicate=custom:indimension,type=marker,tag=blueobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[predicate=custom:indimension,type=marker,tag=blueobsidianshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[predicate=custom:indimension,type=marker,tag=YellowObshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[predicate=custom:indimension,type=marker,tag=yellowobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[predicate=custom:indimension,type=marker,tag=yellowobsidianshield] run tag @s add runobshields
execute if entity @s[tag=runobshields] run function everytick:obsidian_shields
tag @s[tag=runobshields] remove runobshields

execute unless entity @s[tag=runnovarocket] if entity @e[predicate=custom:indimension,type=firework_rocket] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @e[predicate=custom:indimension,type=marker,tag=novatracker] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[predicate=custom:indimension,tag=BlueNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[predicate=custom:indimension,tag=YellowNovaAttach] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[predicate=custom:indimension,tag=BlueNovaNear] run tag @s add runnovarocket
execute unless entity @s[tag=runnovarocket] if entity @a[predicate=custom:indimension,tag=YellowNovaNear] run tag @s add runnovarocket
execute if entity @s[tag=runnovarocket] run function everytick:novarocket
tag @s[tag=runnovarocket] remove runnovarocket
#Attachment reset (both)
scoreboard players reset @a[predicate=custom:indimension,tag=!YellowNovaAttach,tag=!BlueNovaAttach] novattach
scoreboard players reset @a[predicate=custom:indimension,scores={novattach=15..},nbt={OnGround:1b}] novattach
scoreboard players reset @a[predicate=custom:indimension,team=!Yellow,team=!Blue] novattach
tag @a[predicate=custom:indimension,team=!Yellow,team=!Blue] remove BlueNovaAttach
tag @a[predicate=custom:indimension,team=!Yellow,team=!Blue] remove YellowNovaAttach

execute unless entity @s[tag=runcanopy] if entity @e[predicate=custom:indimension,type=ender_pearl] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[predicate=custom:indimension,type=marker,tag=YellowPlatform] run tag @s add runcanopy
execute unless entity @s[tag=runcanopy] if entity @e[predicate=custom:indimension,type=marker,tag=BluePlatform] run tag @s add runcanopy
execute if entity @s[tag=runcanopy] run function everytick:canopy
#Near Canopy check
tag @a[predicate=custom:indimension] remove nearcanopy
execute if entity @s[tag=runcanopy] as @a[predicate=custom:indimension,team=Blue] at @s if entity @e[predicate=custom:indimension,type=marker,tag=YellowPlatform,distance=..7] run tag @s add nearcanopy
execute if entity @s[tag=runcanopy] as @a[predicate=custom:indimension,team=Yellow] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BluePlatform,distance=..7] run tag @s add nearcanopy
execute if entity @s[tag=runcanopy,tag=onlyBlue] as @a[predicate=custom:indimension,team=Blue] at @s if entity @e[predicate=custom:indimension,type=marker,tag=BluePlatform,distance=..7] run tag @s add nearcanopy

execute unless entity @s[tag=runfireball] if entity @e[predicate=custom:indimension,type=fireball,tag=!obfireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[predicate=custom:indimension,type=marker,tag=BlueFireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[predicate=custom:indimension,type=marker,tag=YellowFireball] run tag @s add runfireball
execute if entity @s[tag=runfireball] run function everytick:fireball
tag @s[tag=runfireball] remove runfireball

function everytick:splash

execute unless entity @s[tag=runicbm] if entity @e[predicate=custom:indimension,type=egg,nbt={Item:{tag:{icbm:1b}}}] run tag @s add runicbm
execute unless entity @s[tag=runicbm] if entity @e[predicate=custom:indimension,type=marker,tag=ICBMtracker] run tag @s add runicbm
execute unless entity @s[tag=runicbm] if entity @a[predicate=custom:indimension,scores={respawn=1..},tag=UtilKilled] run tag @s add runicbm
execute if entity @s[tag=runicbm] run function everytick:icbm
tag @s[tag=runicbm] remove runicbm