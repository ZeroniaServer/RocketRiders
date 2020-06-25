##Operator function - Forces an arena clear to occur
execute as @e[tag=Selection] run function arenaclear:areaclear
tag @e[tag=PlacerClear] add Cleared
tag @e[tag=CancelJoin] remove CancelJoin