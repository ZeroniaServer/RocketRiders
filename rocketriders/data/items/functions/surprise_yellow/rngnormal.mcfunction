##Sub-RNG for Normal Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAnt,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowAnt","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngBlade,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowBlade","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngCata,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowCata","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngCitadel,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowCitadel","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngEguard,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowEguard","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngGemi,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowGemi","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngNull,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowNull","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngLift,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowLift","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngSlash,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowSlash","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngToma,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowToma","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1,type=marker] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowAnt,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowAnt","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowBlade,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowBlade","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowCata,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowCata","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowCitadel,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowCitadel","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowEguard,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowGuard","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowGemi,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowGemi","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowNull,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowNull","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowLift,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowLift","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowSlash,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowSlash","surp"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowToma,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowToma","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[tag=surpriseYellow2,type=marker]
kill @e[tag=surpriseYellow1,type=marker]
kill @s