##Operator function - Forces an arena clear to occur
execute as @e[tag=Selection,type=armor_stand] run function arenaclear:areaclear
tag @e[tag=Selection,type=armor_stand] remove needsForceClear
tag @e[tag=PlacerClear,type=area_effect_cloud] add Cleared
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin