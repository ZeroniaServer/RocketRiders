tag @s remove force_mount


execute if predicate custom:team/blue if entity @s[tag=Winner] if predicate game:phase/match/closing unless predicate game:modifiers/hardcore/on if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run return run tp @s 12 64 63 180 0
execute if predicate custom:team/blue if entity @s[tag=Winner] if predicate game:phase/match/closing if predicate game:modifiers/hardcore/on if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=chaseEnabled] run return run tp @s 12 64 64 180 0
execute if predicate custom:team/blue if predicate game:phase/match/pause run return run tp @s -95 202 60 0 0
execute if predicate custom:team/blue if predicate game:phase/staging run return run tp @s -95 202 60 0 0
execute if predicate custom:team/blue run return run tp @s 12 64 -66 0 0

execute if predicate custom:team/yellow if predicate game:phase/match/pause run return run tp @s -95 202 96 180 0
execute if predicate custom:team/yellow if predicate game:phase/staging run return run tp @s -95 202 96 180 0
execute if predicate custom:team/yellow run return run tp @s 12 64 66 -180 0

execute if predicate custom:team/spectator if predicate game:phase/match/pause run return run tp @s -95 213 78 90 90
execute if predicate custom:team/spectator if predicate game:phase/staging run return run tp @s -95 213 78 90 90
execute if predicate custom:team/spectator run return run tp @s 12 100 0.5 90 90
