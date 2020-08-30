tag @s add chaseLast
scoreboard players reset * FlagScore
execute as @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Loser] 12 64 -66 0 0
execute as @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Winner,limit=1] 12 64 64 180 0
execute as @s[scores={endtimer=251..}] run team modify Blue friendlyFire false
