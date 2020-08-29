clear @a[team=Blue] #custom:clear
tag @s add chaseLast
execute as @s[scores={endtimer=1..}] run team modify Blue friendlyFire false
execute as @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Loser] 12 64 -66 0 0
execute as @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Winner] 12 64 66 180 0