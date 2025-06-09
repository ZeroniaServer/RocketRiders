execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=1}] run scoreboard players set @s ArmorColor 1
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=2}] run scoreboard players set @s ArmorColor 2
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=3}] run scoreboard players set @s ArmorColor 3
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=4}] run scoreboard players set @s ArmorColor 4
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=5}] run scoreboard players set @s ArmorColor 5
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=6}] run scoreboard players set @s ArmorColor 6
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=7}] run scoreboard players set @s ArmorColor 7
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=8}] run scoreboard players set @s ArmorColor 8
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=9}] run scoreboard players set @s ArmorColor 9
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=10}] run scoreboard players set @s ArmorColor 10
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=11}] run scoreboard players set @s ArmorColor 11
execute unless entity @s[scores={ArmorColor=1..}] unless entity @a[x=0,team=Blue,scores={ArmorColor=12}] run scoreboard players set @s ArmorColor 12
execute unless entity @s[scores={ArmorColor=1..}] if entity @a[x=0,team=Blue,scores={ArmorColor=12..}] run scoreboard players set @s ArmorColor 13

loot replace entity @s armor.chest loot items:armor/chase_gear/chestplate
loot replace entity @s armor.legs loot items:armor/chase_gear/leggings
execute if function game:norankboots run loot replace entity @s armor.feet loot items:armor/chase_gear/boots

loot replace entity @s hotbar.0 loot items:misc/shooting_saber
execute if entity @e[x=0,tag=Selection,tag=!GameStarted] run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:misc/arrow_lobby"}],functions:[{function:"set_count",count:20}]}]}