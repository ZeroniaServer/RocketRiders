##Sub-RNG for Normal Missiles spawned by Yellow Surprise Eggs
#Choose between each missile
execute if predicate game:item_pool/missile/ant run summon marker ~ ~ ~ {Tags:["surpriseYellowAnt","surpriseYellow2"]}
execute if predicate game:item_pool/missile/blade run summon marker ~ ~ ~ {Tags:["surpriseYellowBlade","surpriseYellow2"]}
execute if predicate game:item_pool/missile/catapult run summon marker ~ ~ ~ {Tags:["surpriseYellowCata","surpriseYellow2"]}
execute if predicate game:item_pool/missile/citadel run summon marker ~ ~ ~ {Tags:["surpriseYellowCitadel","surpriseYellow2"]}
execute if predicate game:item_pool/missile/elder_guardian run summon marker ~ ~ ~ {Tags:["surpriseYellowEguard","surpriseYellow2"]}
execute if predicate game:item_pool/missile/gemini run summon marker ~ ~ ~ {Tags:["surpriseYellowGemi","surpriseYellow2"]}
execute if predicate game:item_pool/missile/chronullifier run summon marker ~ ~ ~ {Tags:["surpriseYellowNull","surpriseYellow2"]}
execute if predicate game:item_pool/missile/lifter run summon marker ~ ~ ~ {Tags:["surpriseYellowLift","surpriseYellow2"]}
execute if predicate game:item_pool/missile/slasher run summon marker ~ ~ ~ {Tags:["surpriseYellowSlash","surpriseYellow2"]}
execute if predicate game:item_pool/missile/tomatwo run summon marker ~ ~ ~ {Tags:["surpriseYellowToma","surpriseYellow2"]}

#Select missile and summon appropriate entity
tag @e[type=marker,tag=surpriseYellow2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowAnt] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowAnt","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowBlade] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowBlade","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowCata] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowCata","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowCitadel] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowCitadel","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowEguard] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowGuard","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowGemi] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowGemi","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowNull] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowNull","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowLift] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowLift","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowSlash] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowSlash","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseYellowToma] run summon marker ~ ~ ~ {Tags:["missile","yellowmissile","YellowToma","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[x=0,type=marker,tag=surpriseYellow2]
kill @e[x=0,type=marker,tag=surpriseYellow1]
kill @s