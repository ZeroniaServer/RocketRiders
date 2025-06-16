setblock 0 184 -16 yellow_shulker_box{lock:{count:-1}} strict

execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run function rr_sandbox:install

item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.chest with leather_chestplate[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.legs with leather_leggings[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
item replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer] armor.feet with leather_boots[dyed_color=16772430,trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]

scoreboard objectives add global dummy
scoreboard objectives add var dummy
scoreboard objectives add Constant dummy
scoreboard objectives add toggleParticles trigger
scoreboard objectives add toggleTips trigger
scoreboard objectives add toggleParkourTips trigger

scoreboard objectives remove disableTips
scoreboard objectives remove hideParkourTips
scoreboard objectives remove splashOwnerUUID
scoreboard objectives remove HasFirework
scoreboard objectives remove death
scoreboard objectives remove PlayerKills
scoreboard objectives remove PlayerDeaths

# Bye bye, nnhealth o7
scoreboard objectives remove nnhealth
scoreboard objectives remove nnhealth_mod
scoreboard objectives remove nnhealth_max
scoreboard objectives remove nnhealth_real
scoreboard objectives remove nnhealth_old

# early stages of nuking Selection armour stand...
execute store success score $game_started global if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted]
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove GameStarted


kill @e[x=0,type=area_effect_cloud,tag=tempobshield]

setblock -69 190 78 air
setblock -69 190 78 minecraft:cherry_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:["","","",""]},front_text:{color:"purple",has_glowing_text:1b,messages:["",{"bold":true,"click_event":{"action":"run_command","command":"/function arenaclear:testvalidclear"},"color":"light_purple","text":"Start"},{"bold":true,"click_event":{"action":"run_command","command":"/execute if entity @e[tag=CancelJoin,limit=1] as @e[tag=Selection,tag=!rngNormal,tag=!rngHeavy,tag=!rngLightning] run tellraw @s {\"text\":\"You must have at least one Missile enabled to start the game\",\"color\":\"red\"}"},"color":"light_purple","text":"Game"},""]},is_waxed:0b}

setblock -47 211 81 air
setblock -47 211 81 minecraft:player_head[powered=false,rotation=3]{profile:{id:[I;1909544700,370756089,-1576344790,1695827449]}}
setblock -47 211 75 air
setblock -47 211 75 minecraft:player_head[powered=false,rotation=5]{profile:{id:[I;1909544700,370756089,-1576344790,1695827449]}}
kill @e[x=0,type=interaction,tag=ZeroniaCredit]
summon interaction -47 211 81 {width:0.75,height:0.75,response:1b,Tags:["ZeroniaCredit1"]}
summon interaction -47 211 75 {width:0.75,height:0.75,response:1b,Tags:["ZeroniaCredit2"]}
data modify entity 49548abb-1add-4dc9-bef0-a23101ae54d1 CustomName set value {"text":"Game Rules","color":"yellow"}
data modify entity cdf45025-712b-428c-99d5-5b9ffe760c26 CustomName set value {"text":"Item Categories","color":"aqua"}
data modify entity 518e79cf-2fd6-4b68-8fdf-02967838e7e5 CustomName set value {"text":"Jump to go back!","color":"gray"}
fill -76 200 92 -70 203 86 bamboo_fence replace birch_fence
fill -76 201 92 -70 203 86 bamboo_slab[type=double] replace birch_slab[type=double]
fill -76 201 92 -70 203 86 bamboo_slab[type=top] replace birch_slab[type=top]
fill -76 201 92 -70 203 86 bamboo_slab[type=bottom] replace birch_slab[type=bottom]
fill -109 229 106 -109 241 50 bamboo_planks replace birch_planks
fill -109 229 106 -109 241 50 bamboo_slab[type=bottom] replace birch_slab[type=bottom]
fill -109 229 106 -109 241 50 bamboo_slab[type=top] replace birch_slab[type=top]
fill -109 229 106 -109 241 50 bamboo_stairs[facing=south,half=top] replace birch_stairs[facing=south,half=top]
fill -109 229 106 -109 241 50 bamboo_stairs[facing=south,half=bottom] replace birch_stairs[facing=south,half=bottom]
fill -109 229 106 -109 241 50 bamboo_stairs[facing=north,half=top] replace birch_stairs[facing=north,half=top]
fill -109 229 106 -109 241 50 bamboo_stairs[facing=north,half=bottom] replace birch_stairs[facing=north,half=bottom]

tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.3.0","color":"green"}
scoreboard players set $WorldVersion CmdData 1304
