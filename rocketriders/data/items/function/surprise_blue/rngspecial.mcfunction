##Sub-RNG for Special Missiles spawned by Blue Surprise Eggs (used for Chaos modifier)
#Choose between each missile
summon marker ~ ~ ~ {Tags:["surpriseBlueBroad","surpriseBlue2"]}
summon marker ~ ~ ~ {Tags:["surpriseBlueBull","surpriseBlue2"]}
summon marker ~ ~ ~ {Tags:["surpriseBlueDuplex","surpriseBlue2"]}
summon marker ~ ~ ~ {Tags:["surpriseBlueHyper","surpriseBlue2"]}

#Select missile and summon appropriate entity
tag @e[type=marker,tag=surpriseBlue2,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueBroad] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueBroad","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueBull] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueBull","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueDuplex] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueDuplex","surp"]}
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=surpriseBlueHyper] run summon marker ~ ~ ~ {Tags:["missile","bluemissile","BlueHyper","surp"]}

#Transfer UUID and kill RNG markers
data modify entity @e[type=marker,tag=surp,limit=1,distance=..1] data.UUID set from entity @s data.UUID
kill @e[x=0,type=marker,tag=surpriseBlue2]
kill @e[x=0,type=marker,tag=surpriseBlue1]
kill @s