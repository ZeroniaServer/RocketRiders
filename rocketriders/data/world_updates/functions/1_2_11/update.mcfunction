function world_updates:1_2_11/improve_parkour

item replace entity @e[predicate=custom:indimension,type=armor_stand,tag=ParkourPlayer] armor.chest with leather_chestplate{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{color:16772430}}
item replace entity @e[predicate=custom:indimension,type=armor_stand,tag=ParkourPlayer] armor.legs with leather_leggings{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{color:16772430}}
item replace entity @e[predicate=custom:indimension,type=armor_stand,tag=ParkourPlayer] armor.feet with leather_boots{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{color:16772430}}

tellraw @a[predicate=custom:indimension] {"text":"Successfully applied updates from Rocket Riders 1.2.11","color":"green"}
scoreboard players set $WorldVersion CmdData 1292