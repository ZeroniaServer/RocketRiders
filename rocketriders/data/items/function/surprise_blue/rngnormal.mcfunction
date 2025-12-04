##Sub-RNG for Normal Missiles spawned by Blue Surprise Eggs
#Choose between each missile
execute if predicate game:item_pool/missile/ant run summon marker ~ ~ ~ {Tags:["surpriseBlueAnt","surpriseBlue2"]}
execute if predicate game:item_pool/missile/blade run summon marker ~ ~ ~ {Tags:["surpriseBlueBlade","surpriseBlue2"]}
execute if predicate game:item_pool/missile/catapult run summon marker ~ ~ ~ {Tags:["surpriseBlueCata","surpriseBlue2"]}
execute if predicate game:item_pool/missile/citadel run summon marker ~ ~ ~ {Tags:["surpriseBlueCitadel","surpriseBlue2"]}
execute if predicate game:item_pool/missile/elder_guardian run summon marker ~ ~ ~ {Tags:["surpriseBlueEguard","surpriseBlue2"]}
execute if predicate game:item_pool/missile/gemini run summon marker ~ ~ ~ {Tags:["surpriseBlueGemi","surpriseBlue2"]}
execute if predicate game:item_pool/missile/chronullifier run summon marker ~ ~ ~ {Tags:["surpriseBlueNull","surpriseBlue2"]}
execute if predicate game:item_pool/missile/lifter run summon marker ~ ~ ~ {Tags:["surpriseBlueLift","surpriseBlue2"]}
execute if predicate game:item_pool/missile/slasher run summon marker ~ ~ ~ {Tags:["surpriseBlueSlash","surpriseBlue2"]}
execute if predicate game:item_pool/missile/tomatwo run summon marker ~ ~ ~ {Tags:["surpriseBlueToma","surpriseBlue2"]}

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