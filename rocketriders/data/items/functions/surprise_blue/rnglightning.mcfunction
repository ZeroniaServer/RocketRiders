##Sub-RNG for Lightning Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngHur,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueHur","surpriseBlue2"]}
execute if entity @e[tag=Selection,tag=rngThun,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseBlueBolt","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseBlue2,sort=random,limit=1,distance=..1,type=marker] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseBlueHur,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueHur"]}
execute if entity @e[tag=rngSelected,tag=surpriseBlueBolt,type=marker] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueBolt"]}
kill @e[tag=supriseBlue2,type=marker]