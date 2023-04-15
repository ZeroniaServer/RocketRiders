##Sub-RNG for Lightning Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngHur] run summon marker ~ ~ ~ {Tags:["surpriseBlueHur","surpriseBlue2"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngThun] run summon marker ~ ~ ~ {Tags:["surpriseBlueBolt","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[predicate=custom:indimension,type=marker,tag=surpriseBlue2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseBlueHur] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueHur","surp"]}
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseBlueBolt] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueBolt","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[predicate=custom:indimension,type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[predicate=custom:indimension,type=marker,tag=surpriseBlue2]
kill @e[predicate=custom:indimension,type=marker,tag=surpriseBlue1]
kill @s