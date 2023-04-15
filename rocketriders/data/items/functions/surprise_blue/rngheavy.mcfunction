##Sub-RNG for Heavy Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngAux] run summon marker ~ ~ ~ {Tags:["surpriseBlueAux","surpriseBlue2"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngRift] run summon marker ~ ~ ~ {Tags:["surpriseBlueRift","surpriseBlue2"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngJbuster] run summon marker ~ ~ ~ {Tags:["surpriseBlueJbuster","surpriseBlue2"]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=rngWar] run summon marker ~ ~ ~ {Tags:["surpriseBlueWar","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[predicate=custom:indimension,type=marker,tag=surpriseBlue2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseBlueAux] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueAux","surp"]}
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseBlueJbuster] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueJug","surp"]}
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseBlueWar] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueWar","surp"]}
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseBlueRift] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueRift","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[predicate=custom:indimension,type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[predicate=custom:indimension,type=marker,tag=surpriseBlue2]
kill @e[predicate=custom:indimension,type=marker,tag=surpriseBlue1]
kill @s