##Sub-RNG for Normal Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAnt,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueAnt","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngBlade,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueBlade","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngCata,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueCata","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngCitadel,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueCitadel","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngEguard,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueEguard","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngGemi,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueGemi","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngNull,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueNull","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngLift,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueLift","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngSlash,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueSlash","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngToma,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueToma","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseBlue2,sort=random,limit=1,distance=..1,type=marker] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseBlueAnt,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueAnt","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueBlade,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueBlade","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueCata,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueCata","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueCitadel,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueCitadel","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueEguard,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueGuard","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueGemi,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueGemi","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueNull,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueNull","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueLift,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueLift","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueSlash,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueSlash","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueToma,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueToma","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[tag=surpriseBlue2,type=marker]
kill @e[tag=surpriseBlue1,type=marker]
kill @s