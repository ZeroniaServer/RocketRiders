execute if entity @s[team=Blue,tag=BlueNovaNear] if predicate game:gamemode_components/neutral_utility_colors if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run tag @s add BlueNovaAttach
tag @s[team=Blue,tag=BlueNovaNear] remove BlueNovaNear
advancement revoke @s only rr_chase:rr_utility/firework_shot