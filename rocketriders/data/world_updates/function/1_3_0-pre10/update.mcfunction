# disable YZELO
tag @e[limit=1,x=0,type=armor_stand,tag=Selection] add noYZELO

scoreboard objectives remove toggleParticles
scoreboard objectives remove toggleTips
scoreboard objectives remove toggleParkourTips
scoreboard objectives remove toggleHotbarAutoFill
scoreboard objectives remove options

scoreboard objectives remove deaths
scoreboard objectives remove kills
scoreboard objectives remove soulKills
scoreboard objectives remove prevKills

execute if predicate game:phase/match if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=TimeOut] run scoreboard players set $1v1_duel_time_out_period global 1
tag @e[limit=1,x=0,type=armor_stand,tag=Selection] remove TimeOut
tag @e[limit=1,x=0,type=armor_stand,tag=Selection] remove noAchievements

function custom:delete_storage {storage_id:"rocketriders:achievements"}

kill @e[x=0,tag=modroomHeavy]
summon minecraft:text_display -62.0 194.25 82.75 {Tags:["modroomHeavy"],Rotation:[180,0],text:{color:"red",text:"Heavy Damage Missiles"}}
kill @e[x=0,tag=modroomUtility]
summon minecraft:text_display -65.0 194.25 82.75 {Tags:["modroomUtility"],Rotation:[180,0],text:{color:"light_purple",text:"Utility Items"}}
kill @e[x=0,tag=modroomNormal]
summon minecraft:text_display -64.5 194.25 74.25 {Tags:["modroomNormal"],Rotation:[0,0],text:{color:"green",text:"Normal Damage Missiles"}}
kill @e[x=0,tag=modroomLightning]
summon minecraft:text_display -61.5 194.125 74.25 {Tags:["modroomLightning"],Rotation:[0,0],text:{color:"gold",text:"Lightning Speed\nMissiles"}}
kill @e[x=0,tag=modroomCustom]
summon minecraft:text_display -68.75 194.25 74.5 {Tags:["modroomCustom"],Rotation:[-90,0],text:{color:"dark_aqua",text:"Game Customization"},transformation:{scale:[1.25,1.25,1.25],left_rotation:[1,0,0,0],translation:[0,0,0],right_rotation:[1,0,0,0]}}
kill @e[x=0,tag=modroomGamerules]
summon minecraft:text_display -69.75 194.25 78.5 {Tags:["modroomGamerules"],Rotation:[-90,0],text:{color:"yellow",text:"Game Rules"},transformation:{scale:[1.25,1.25,1.25],left_rotation:[1,0,0,0],translation:[0,0,0],right_rotation:[1,0,0,0]}}
kill @e[x=0,tag=modroomItems]
summon minecraft:text_display -68.75 194.25 82.5 {Tags:["modroomItems"],Rotation:[-90,0],text:{color:"aqua",text:"Item Categories"},transformation:{scale:[1.25,1.25,1.25],left_rotation:[1,0,0,0],translation:[0,0,0],right_rotation:[1,0,0,0]}}
kill @e[x=0,tag=modroomDecos]
summon minecraft:text_display -56.05 196.25 78.5 {Tags:["modroomDecos"],Rotation:[90,20],text:{color:"#FF7B00",text:"Base Customizer"},transformation:{scale:[1.75,1.75,1.75],left_rotation:[1,0,0,0],translation:[0,0,0],right_rotation:[1,0,0,0]}}
kill @e[x=0,tag=modroomGoBack]
summon minecraft:text_display -63.5 191.25 78.5 {Tags:["modroomGoBack"],billboard:center,text:{color:"gray",text:"Jump to go back!"}}

scoreboard players set $WorldVersion CmdData 1307
