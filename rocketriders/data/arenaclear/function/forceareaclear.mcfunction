##Operator function - Forces an arena clear to occur
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:areaclear
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove needsForceClear
tag @e[x=0,type=marker,tag=PlacerClear] add Cleared
scoreboard players set $match_over_timer global 0
execute if predicate game:phase/match/over run function game:set_phase/staging.configuration
