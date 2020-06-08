execute if entity @s[tag=Blue,tag=NovaNear] run tag @s add YellowNovaAttach
execute if entity @s[tag=Yellow,tag=NovaNear] run tag @s add BlueNovaAttach
tag @s remove NovaNear
advancement revoke @s only achievements:rr_utility/firework_shot