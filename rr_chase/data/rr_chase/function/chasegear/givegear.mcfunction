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

execute if score @s ArmorColor matches 1 run function rr_chase:chasegear/equip/blue
execute if score @s ArmorColor matches 2 run function rr_chase:chasegear/equip/yellow
execute if score @s ArmorColor matches 3 run function rr_chase:chasegear/equip/red
execute if score @s ArmorColor matches 4 run function rr_chase:chasegear/equip/green
execute if score @s ArmorColor matches 5 run function rr_chase:chasegear/equip/purple
execute if score @s ArmorColor matches 6 run function rr_chase:chasegear/equip/pink
execute if score @s ArmorColor matches 7 run function rr_chase:chasegear/equip/orange
execute if score @s ArmorColor matches 8 run function rr_chase:chasegear/equip/strawberry
execute if score @s ArmorColor matches 9 run function rr_chase:chasegear/equip/mint
execute if score @s ArmorColor matches 10 run function rr_chase:chasegear/equip/apple
execute if score @s ArmorColor matches 11 run function rr_chase:chasegear/equip/banana
execute if score @s ArmorColor matches 12 run function rr_chase:chasegear/equip/blurple
execute if score @s ArmorColor matches 13.. run function rr_chase:chasegear/equip/white

execute if entity @e[x=0,tag=Selection,tag=!GameStarted] run item replace entity @s weapon.offhand with minecraft:arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}',custom_data={Lobby:1b}] 20