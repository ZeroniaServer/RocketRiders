##Sub-RNG for Heavy Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAux,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueAux","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngRift,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueRift","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngJbuster,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueJbuster","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngWar,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueWar","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseBlue2,sort=random,limit=1,distance=..1,type=marker] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseBlueAux,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueAux","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueJbuster,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueJug","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueWar,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueWar","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueRift,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueRift","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[tag=surpriseBlue2,type=marker]
kill @e[tag=surpriseBlue1,type=marker]
kill @s