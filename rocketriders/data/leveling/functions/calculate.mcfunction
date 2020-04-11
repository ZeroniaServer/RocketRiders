execute as @a[tag=CalculateWin] at @s run scoreboard players add @s[scores={kills=1..}] bonusXP 5
execute as @a[tag=CalculateWin] at @s run scoreboard players remove @s[scores={deaths=1..}] bonusXP 2
execute as @a[tag=CalculateWin] at @s run scoreboard players remove @s[scores={deaths=1..}] deaths 1 
execute as @a[tag=CalculateWin] at @s run scoreboard players remove @s[scores={kills=1..}] kills 1 
execute as @a[scores={bonusXP=1..}] at @s run scoreboard players add @s XP 1
execute as @a[scores={bonusXP=1..}] at @s run scoreboard players remove @s bonusXP 1