##Sub-RNG for Heavy Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if entity @e[tag=Selection,tag=rngAux,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowAux","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngRift,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowRift","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngJbuster,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowJbuster","surpriseYellow2"]}
execute if entity @e[tag=Selection,tag=rngWar,type=armor_stand] run summon marker ~ ~ ~ {Tags:["surpriseYellowWar","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[tag=surpriseYellow2,sort=random,limit=1,distance=..1,type=marker] add rngSelected
execute if entity @e[tag=rngSelected,tag=surpriseYellowAux,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowAux"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowRift,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowRift"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowJbuster,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowJug"]}
execute if entity @e[tag=rngSelected,tag=surpriseYellowWar,type=marker] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowWar"]}
kill @e[tag=surpriseYellow2,type=marker]