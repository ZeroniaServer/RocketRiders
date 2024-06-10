##Utility function for un-cancelling the Join Pads
tag @e[x=0,type=marker,tag=CancelJoin] remove CancelJoin
function game:uncancelblue
execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=onlyBlue] run function game:uncancelyellow