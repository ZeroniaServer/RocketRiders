#remove join cancel from join pads
execute if entity @e[type=marker,tag=PlacerClear] run schedule function game:uncancelpads 2t append
tag @e[type=marker,tag=PlacerClear] add Cleared
execute if entity @e[type=marker,tag=PlacerClear] run tag @s remove duelLast