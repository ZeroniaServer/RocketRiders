function rr_crusade:disable
execute if entity @e[tag=rr_crusade,limit=1] run kill @e[tag=rr_crusade,limit=1]
scoreboard objectives remove nexushealth
scoreboard objectives remove givecanopy
execute if entity @e[type=area_effect_cloud,tag=BlueNexusA,limit=1] run kill @e[type=area_effect_cloud,tag=BlueNexusA,limit=1]
execute if entity @e[type=area_effect_cloud,tag=BlueNexusB,limit=1] run kill @e[type=area_effect_cloud,tag=BlueNexusB,limit=1]
execute if entity @e[type=area_effect_cloud,tag=BlueNexusC,limit=1] run kill @e[type=area_effect_cloud,tag=BlueNexusC,limit=1]
execute if entity @e[type=area_effect_cloud,tag=YellowNexusA,limit=1] run kill @e[type=area_effect_cloud,tag=YellowNexusA,limit=1]
execute if entity @e[type=area_effect_cloud,tag=YellowNexusB,limit=1] run kill @e[type=area_effect_cloud,tag=YellowNexusB,limit=1]
execute if entity @e[type=area_effect_cloud,tag=YellowNexusC,limit=1] run kill @e[type=area_effect_cloud,tag=YellowNexusC,limit=1]
scoreboard players reset * gamemodeID
execute unless entity @e[tag=rr_crusade,limit=1] run tellraw @s {"text":"Crusade mode uninstalled.","color":"red","bold":"true"}