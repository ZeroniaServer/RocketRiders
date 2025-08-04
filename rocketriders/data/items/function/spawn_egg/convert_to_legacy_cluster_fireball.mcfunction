scoreboard players add @a[limit=1,tag=placer] FireballSpawned 1

tag @s add Cluster

execute if entity @a[limit=1,tag=placer,team=!Yellow] run tag @s add BlueFireball
execute if entity @a[limit=1,tag=placer,team=Yellow] run tag @s add YellowFireball

execute unless entity @s[tag=!BlueFireball,tag=!YellowFireball] run function items:spawnfireball
