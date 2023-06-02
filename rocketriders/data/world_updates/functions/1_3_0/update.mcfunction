function world_updates:1_3_0/improve_parkour
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_sandbox,limit=1] run function rr_sandbox:install

item replace entity @e[predicate=custom:indimension,type=armor_stand,tag=ParkourPlayer] armor.chest with leather_chestplate{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{color:16772430}}
item replace entity @e[predicate=custom:indimension,type=armor_stand,tag=ParkourPlayer] armor.legs with leather_leggings{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{color:16772430}}
item replace entity @e[predicate=custom:indimension,type=armor_stand,tag=ParkourPlayer] armor.feet with leather_boots{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{color:16772430}}

scoreboard objectives add toggleParticles trigger
scoreboard objectives add toggleTips trigger
scoreboard objectives remove disableTips

tellraw @a[predicate=custom:indimension] {"text":"Successfully applied updates from Rocket Riders 1.3.0","color":"green"}
scoreboard players set $WorldVersion CmdData 1300