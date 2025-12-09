##Clear Yellow/Blue spawn blocks (for valid spawnpoints)
execute if score $game_duration global matches 3.. unless entity @e[x=0,type=area_effect_cloud,tag=fireAEC] run fill 11 64 -66 13 66 -65 light[level=0]
execute if score $game_duration global matches 3.. unless predicate game:gamemode_components/one_team unless entity @e[x=0,type=area_effect_cloud,tag=fireAEC] run fill 13 64 66 11 66 65 light[level=0]
