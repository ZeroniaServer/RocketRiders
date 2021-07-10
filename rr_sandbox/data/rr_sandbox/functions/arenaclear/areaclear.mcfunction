execute as @e[type=marker,tag=SmartClearScaf] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace scaffolding
kill @e[type=marker,tag=SmartClearScaf]

#remove join cancel from join pads
schedule function game:uncancelpads 2t append