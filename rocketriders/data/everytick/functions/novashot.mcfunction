execute if entity @s[team=Blue,tag=YellowNovaNear] run tag @s add YellowNovaAttach
execute if entity @s[team=Yellow,tag=BlueNovaNear] run tag @s add BlueNovaAttach
tag @s[team=Blue,tag=YellowNovaNear] remove YellowNovaNear
tag @s[team=Yellow,tag=BlueNovaNear] remove BlueNovaNear
advancement revoke @s only achievements:rr_utility/firework_shot