##Sub-RNG for Special Missiles spawned by Yellow Surprise Eggs (used for Chaos modifier)
#Choose between each missile
summon marker ~ ~ ~ {Tags:["surpriseYellowBroad","surpriseYellow2"]}
summon marker ~ ~ ~ {Tags:["surpriseYellowBull","surpriseYellow2"]}
summon marker ~ ~ ~ {Tags:["surpriseYellowDuplex","surpriseYellow2"]}
summon marker ~ ~ ~ {Tags:["surpriseYellowHyper","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[predicate=custom:indimension,type=marker,tag=surpriseYellow2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseYellowBroad] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowBroad","surp"]}
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseYellowBull] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowBull","surp"]}
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseYellowDuplex] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowDuplex","surp"]}
execute if entity @e[predicate=custom:indimension,type=marker,tag=rngSelected,tag=surpriseYellowHyper] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowHyper","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[predicate=custom:indimension,type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[predicate=custom:indimension,type=marker,tag=surpriseYellow2]
kill @e[predicate=custom:indimension,type=marker,tag=surpriseYellow1]
kill @s