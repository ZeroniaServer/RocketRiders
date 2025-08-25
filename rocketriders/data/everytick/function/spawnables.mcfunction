##Utility-specific commands (optimized to only run when necessary)
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=dragon_fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=blueobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=blueobsidianshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=yellowobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=yellowobsidianshield] run tag @s add runobshields
execute if entity @s[tag=runobshields] run function everytick:obsidian_shields
tag @s[tag=runobshields] remove runobshields

execute unless entity @s[tag=runfireball] if entity @e[x=0,type=fireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[x=0,type=marker,tag=BlueFireball] run tag @s add runfireball
execute unless entity @s[tag=runfireball] if entity @e[x=0,type=marker,tag=YellowFireball] run tag @s add runfireball
execute if entity @s[tag=runfireball] run function everytick:fireball
tag @s[tag=runfireball] remove runfireball

function everytick:splash
