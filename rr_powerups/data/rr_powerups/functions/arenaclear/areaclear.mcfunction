execute as @e[tag=BlueBarricade] at @s if block ~ ~ ~ blue_stained_glass run setblock ~ ~ ~ air
kill @e[tag=BlueBarricade]
execute as @e[tag=YellowBarricade] at @s if block ~ ~ ~ yellow_stained_glass run setblock ~ ~ ~ air
kill @e[tag=YellowBarricade]

#remove join cancel from joinpads
tag @e[tag=CancelJoin] remove CancelJoin