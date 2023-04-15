##Utility function for un-cancelling the Join Pads
tag @e[predicate=custom:indimension,type=marker,tag=CancelJoin] remove CancelJoin
function game:uncancelblue
execute unless entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=onlyBlue] run function game:uncancelyellow