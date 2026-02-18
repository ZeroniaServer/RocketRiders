# obsidian shields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=dragon_fireball,tag=obfireball] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=blueobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=blueobsidianshield] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=yellowobtracker] run tag @s add runobshields
execute unless entity @s[tag=runobshields] if entity @e[x=0,type=marker,tag=yellowobsidianshield] run tag @s add runobshields
execute if entity @s[tag=runobshields] run function everytick:obsidian_shields
tag @s[tag=runobshields] remove runobshields

# splash
function everytick:splash/simulate

# lava splash
execute if predicate game:gamemode_components/has_powerups run function everytick:lava_splash/simulate

# bees
execute if predicate game:gamemode_components/has_powerups if entity @e[limit=1,x=0,type=bee] run function everytick:bees
