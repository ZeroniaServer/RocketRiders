execute if entity @e[tag=Selection,type=armor_stand,tag=chaseEnabled,tag=customNova] if entity @s[team=Blue,tag=BlueNovaNear] run tag @s add BlueNovaAttach
tag @s[team=Blue,tag=BlueNovaNear] remove BlueNovaNear
advancement revoke @s only rr_chase:rr_utility/firework_shot