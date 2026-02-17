##Operator function - Forces an arena clear to occur
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:areaclear
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove needsForceClear
tag @e[x=0,type=marker,tag=PlacerClear] add Cleared
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] endtimer 0
execute if predicate game:phase/match/paused run return run function game:set_phase/match.paused
execute if predicate game:phase/match/play run return run function game:set_phase/match.play
function game:set_phase/staging
