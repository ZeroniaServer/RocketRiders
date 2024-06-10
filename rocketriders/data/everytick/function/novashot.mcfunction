##Utility function for detecting players shot by fireworks (for Nova Rocket)
execute if entity @s[team=Blue,tag=YellowNovaNear,tag=!probablyDied] run tag @s add YellowNovaAttach
execute if entity @s[team=Yellow,tag=BlueNovaNear,tag=!probablyDied] run tag @s add BlueNovaAttach
tag @s[team=Blue,tag=YellowNovaNear,tag=!probablyDied] remove YellowNovaNear
tag @s[team=Yellow,tag=BlueNovaNear,tag=!probablyDied] remove BlueNovaNear
advancement revoke @s only achievements:rr_utility/firework_shot