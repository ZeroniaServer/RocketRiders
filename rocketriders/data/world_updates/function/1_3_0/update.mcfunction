execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run function rr_sandbox:install

item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.chest with leather_chestplate[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.legs with leather_leggings[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.feet with leather_boots[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]

scoreboard objectives add toggleParticles trigger
scoreboard objectives add toggleTips trigger
scoreboard objectives add toggleParkourTips trigger
scoreboard objectives remove disableTips
scoreboard objectives remove hideParkourTips

kill @e[x=0,type=area_effect_cloud,tag=tempobshield]

tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.3.0","color":"green"}
scoreboard players set $WorldVersion CmdData 1303