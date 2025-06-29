##Utility-specific commands (optimized to only run when necessary)
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=dragon_fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=blueobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=blueobsidianshield] run tag @s add runobshields
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
scoreboard players reset @a[x=0,scores={novattach=15..},predicate=custom:is_on_ground] novattach
scoreboard players reset @a[x=0,team=!Yellow,team=!Blue] novattach
tag @a[x=0,team=!Yellow,team=!Blue] remove BlueNovaAttach
tag @a[x=0,team=!Yellow,team=!Blue] remove YellowNovaAttach

execute unless entity @s[tag=runfireball] if entity @e[x=0,type=fireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[x=0,type=marker,tag=BlueFireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[x=0,type=marker,tag=YellowFireball] run tag @s add runfireball
execute if entity @s[tag=runfireball] run function everytick:fireball
tag @s[tag=runfireball] remove runfireball

function everytick:splash
