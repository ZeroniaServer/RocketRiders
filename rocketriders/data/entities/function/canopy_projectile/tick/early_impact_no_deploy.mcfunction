kill @s

gamerule minecraft:freeze_damage true
execute unless entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=NoFall] on origin run damage @s 5 minecraft:ender_pearl
gamerule minecraft:freeze_damage false
