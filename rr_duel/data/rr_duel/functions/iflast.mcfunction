#remove join cancel from joinpads
schedule function game:uncancelpads 2t append
tag @e[tag=PlacerClear,type=marker] add Cleared
execute if entity @e[tag=PlacerClear,type=marker] run tag @s remove duelLast