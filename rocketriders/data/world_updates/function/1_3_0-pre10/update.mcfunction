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
summon minecraft:text_display -63.5 191.25 78.5 {Tags:["modroomGoBack"],billboard:"center",text:{color:"gray",text:"Jump to go back!"}}

fill -64 193 83 -67 192 83 minecraft:magenta_concrete strict
fill -62 193 83 -63 192 83 minecraft:red_concrete strict
fill -67 193 73 -63 192 73 minecraft:lime_concrete strict
fill -62 193 73 -62 192 73 minecraft:yellow_concrete strict

function game:place_facade

kill @e[limit=1,x=0,type=area_effect_cloud,tag=NameDisp]
kill @e[limit=1,x=0,type=area_effect_cloud,tag=TNTDisp]
kill @e[limit=1,x=0,type=area_effect_cloud,tag=SpeedDisp]
kill @e[limit=1,x=0,type=item_frame,tag=MisDispIF]
kill @e[x=0,tag=missile_display_text]
summon minecraft:text_display 15.5 203.25 78.5 {Tags:["missile_display_text","missile_display_text.body"],billboard:"vertical",background:0,shadow:true}
summon minecraft:text_display 15.5 204.2 78.5 {Tags:["missile_display_text","missile_display_text.title"],billboard:"vertical",background:0,shadow:true,transformation:{scale:[1.5,1.5,1.5],translation:[0,0,0.01],left_rotation:[1,0,0,0],right_rotation:[1,0,0,0]}}
summon minecraft:item_display 15.5 205.1 78.5 {Tags:["missile_display_text","missile_display_text.icon"],billboard:"vertical",item_display:"gui",brightness:{block:15,sky:15},transformation:{scale:[-0.8,0.8,0.001],translation:[0,0,0.01],left_rotation:[1,0,0,0],right_rotation:[1,0,0,0]}}
function lobby:missiledisplay/missile/ant

data modify storage rocketriders:main update.parkour_name set from entity @e[limit=1,x=0,tag=ParkourLB,tag=ParkourName] CustomName
data modify storage rocketriders:main update.parkour_name set from entity @e[limit=1,x=0,tag=ParkourLB,tag=ParkourName] text
kill @e[x=0,tag=ParkourLB,tag=ParkourName]
summon minecraft:text_display 65 208.45 2 {Tags:["parkour","ParkourLB","ParkourName"],billboard:"center",text:"No players have completed",background:0}
data modify entity @e[limit=1,x=0,type=text_display,tag=parkour,tag=ParkourLB,tag=ParkourName] text set from storage rocketriders:main update.parkour_name

data modify storage rocketriders:main update.parkour_time set from entity @e[limit=1,x=0,tag=ParkourLB,tag=ParkourTime] CustomName
data modify storage rocketriders:main update.parkour_time set from entity @e[limit=1,x=0,tag=ParkourLB,tag=ParkourTime] text
kill @e[x=0,tag=ParkourLB,tag=ParkourTime]
summon minecraft:text_display 65 208.15 2 {Tags:["parkour","ParkourLB","ParkourTime"],billboard:"center",text:"the parkour course yet",background:0}
data modify entity @e[limit=1,x=0,type=text_display,tag=parkour,tag=ParkourLB,tag=ParkourTime] text set from storage rocketriders:main update.parkour_time

kill @e[x=0,tag=parkourEnd]
summon minecraft:text_display 67.5 202.75 91.5 {Tags:["parkour","parkourEnd"],billboard:"center",text:{bold:true,color:"red",text:"Finished Parkour!"},background:0,shadow:true}
kill @e[x=0,tag=OldLobbyInfo1]
summon minecraft:text_display 82.5 203.25 102.5 {Tags:["parkour","OldLobbyInfo1"],billboard:"center",text:["",{color:"blue",text:"Rocket "},{color:"gold",text:"Riders "},"c. 2017"],background:0,shadow:true,transformation:{scale:[1.25,1.25,1.25],translation:[0,0,0],left_rotation:[1,0,0,0],right_rotation:[1,0,0,0]}}
kill @e[x=0,tag=OldLobbyInfo2]
summon minecraft:text_display 52.5 203.25 102.5 {Tags:["parkour","OldLobbyInfo2"],billboard:"center",text:["",{color:"dark_green",text:"Cubehamster "},"on ",{color:"blue",text:"Rocket "},{color:"gold",text:"Riders!"}],background:0,shadow:true,transformation:{scale:[1.25,1.25,1.25],translation:[0,0,0],left_rotation:[1,0,0,0],right_rotation:[1,0,0,0]}}
kill @e[x=67.5,y=201.5,z=102.5,distance=..1,tag=parkour]
kill @e[x=0,tag=parkour.cake_label]
summon minecraft:text_display 67.5 201.8 102.5 {Tags:["parkour","parkour.cake_label"],billboard:"center",text:{bold:true,text:"The Lie!"},background:0,shadow:true,transformation:{scale:[1.5,1.5,1.5],translation:[0,0,0],left_rotation:[1,0,0,0],right_rotation:[1,0,0,0]}}
kill @e[x=0,tag=parkourReturn]
summon minecraft:text_display 67.5 201.75 118.5 {Tags:["parkour","parkourReturn"],billboard:"center",text:{color:"dark_green",text:"Return to Lobby"},background:0,shadow:true,transformation:{scale:[1.5,1.5,1.5],translation:[0,0,0],left_rotation:[1,0,0,0],right_rotation:[1,0,0,0]}}

scoreboard players set $WorldVersion CmdData 1307
