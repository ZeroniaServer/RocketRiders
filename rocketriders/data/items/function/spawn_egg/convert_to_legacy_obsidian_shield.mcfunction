scoreboard players add @a[limit=1,tag=placer] ObshieldSpawned 1

execute if entity @a[limit=1,tag=placer,team=!Yellow] run tag @s add BlueObshield
execute if entity @a[limit=1,tag=placer,team=Yellow] run tag @s add YellowObshield

execute unless entity @s[tag=!BlueObshield,tag=!YellowObshield] run function items:spawnobshield
