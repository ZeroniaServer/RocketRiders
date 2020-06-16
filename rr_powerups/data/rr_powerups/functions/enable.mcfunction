tag @e[tag=Selection] remove switchGamemodes
tag @e[tag=Selection] add powerupsEnabled
tag @e[tag=Selection] add ResidersOff
tag @e[tag=Selection] add customPrevention
tag @e[tag=Selection] remove Residers
execute unless entity @e[tag=captureMiddle,limit=1] run summon area_effect_cloud 12.5 54.0 0.0 {Tags:["captureMiddle"],Duration:2000000000}