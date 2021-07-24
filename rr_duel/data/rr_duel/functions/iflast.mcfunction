#remove join cancel from join pads
execute if entity @e[type=marker,tag=PlacerClear] run schedule function game:uncancelpads 2t append
execute if entity @e[type=marker,tag=PlacerClear,tag=!Cleared] run tag @s remove duelLast
tag @e[type=marker,tag=PlacerClear] add Cleared