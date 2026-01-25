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

scoreboard players set $WorldVersion CmdData 1306
