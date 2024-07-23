##Sub-RNG for Normal Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngAnt] run summon marker ~ ~ ~ {Tags:["surpriseBlueAnt","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngBlade] run summon marker ~ ~ ~ {Tags:["surpriseBlueBlade","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngCata] run summon marker ~ ~ ~ {Tags:["surpriseBlueCata","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngCitadel] run summon marker ~ ~ ~ {Tags:["surpriseBlueCitadel","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngEguard] run summon marker ~ ~ ~ {Tags:["surpriseBlueEguard","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngGemi] run summon marker ~ ~ ~ {Tags:["surpriseBlueGemi","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngNull] run summon marker ~ ~ ~ {Tags:["surpriseBlueNull","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngLift] run summon marker ~ ~ ~ {Tags:["surpriseBlueLift","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngSlash] run summon marker ~ ~ ~ {Tags:["surpriseBlueSlash","surpriseBlue2"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=rngToma] run summon marker ~ ~ ~ {Tags:["surpriseBlueToma","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[type=marker,tag=surpriseBlue2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueAnt] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueAnt","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueBlade] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueBlade","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueCata] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueCata","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueCitadel] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueCitadel","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueEguard] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueGuard","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueGemi] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueGemi","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueNull] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueNull","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueLift] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueLift","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueSlash] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueSlash","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueToma] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueToma","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[x=0,type=marker,tag=surpriseBlue2]
kill @e[x=0,type=marker,tag=surpriseBlue1]
kill @s