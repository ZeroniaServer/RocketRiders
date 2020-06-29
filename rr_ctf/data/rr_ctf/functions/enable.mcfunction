tag @e[tag=Selection] remove switchGamemodes
tag @e[tag=Selection] add ctfEnabled
tag @e[tag=Selection] add ResidersOff
tag @e[tag=Selection] add customPrevention
tag @e[tag=Selection] remove Residers
execute unless entity @e[tag=ctfMiddle,limit=1] run summon area_effect_cloud 12.5 54.0 0.0 {Tags:["ctfMiddle"],Duration:2000000000}