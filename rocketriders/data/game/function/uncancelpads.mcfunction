##Utility function for un-cancelling the Join Pads
tag @e[x=0,type=marker,tag=CancelJoin] remove CancelJoin
function game:uncancelblue
execute unless predicate game:gamemode_components/one_team run function game:uncancelyellow