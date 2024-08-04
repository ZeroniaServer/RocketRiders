execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run function rr_sandbox:install

item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.chest with leather_chestplate[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.legs with leather_leggings[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.feet with leather_boots[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]

scoreboard objectives add toggleParticles trigger
scoreboard objectives add toggleTips trigger
scoreboard objectives add toggleParkourTips trigger

#TODO spyglass is stupid
scoreboard objectives add disableTips dummy
scoreboard objectives add hideParkourTips dummy

scoreboard objectives remove disableTips
scoreboard objectives remove hideParkourTips

kill @e[x=0,type=area_effect_cloud,tag=tempobshield]

setblock -69 190 78 air
setblock -69 190 78 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"purple",has_glowing_text:1b,messages:['""','{"bold":true,"clickEvent":{"action":"run_command","value":"/function arenaclear:testvalidclear"},"color":"light_purple","text":"Start"}','{"bold":true,"clickEvent":{"action":"run_command","value":"/execute if entity @e[tag=CancelJoin,limit=1] as @e[tag=Selection,tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning] run tellraw @s {\\"text\\":\\"You must have at least one Missile enabled to start the game\\",\\"color\\":\\"red\\"}"},"color":"light_purple","text":"Game"}','""']},is_waxed:0b}

tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.3.0","color":"green"}
scoreboard players set $WorldVersion CmdData 1304