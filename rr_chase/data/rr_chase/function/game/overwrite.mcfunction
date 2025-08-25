#Obshields
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~1 ~2 ~ white_stained_glass_pane[east=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-1 ~2 ~ white_stained_glass_pane[west=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~1 ~-2 ~ white_stained_glass_pane[east=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-1 ~-2 ~ white_stained_glass_pane[west=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-2 ~1 ~ white_stained_glass_pane[east=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~-2 ~-1 ~ white_stained_glass_pane[east=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~2 ~1 ~ white_stained_glass_pane[west=true]
execute as @e[x=0,type=marker,tag=blueobalone,scores={shieldplacement=6}] at @s run setblock ~2 ~-1 ~ white_stained_glass_pane[west=true]

kill @e[x=0,type=marker,scores={shieldplacement=6..}]
