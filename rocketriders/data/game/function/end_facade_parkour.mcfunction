tag @s remove doing_facade_parkour
title @s actionbar ""

execute if predicate game:game_in_progress run return 1
execute if entity @s[x=-101,y=202,z=60,dx=12,dy=1,dz=5] run return 1
tp @s[team=Blue] -95 202 60 0 0
tp @s[team=Yellow] -95 202 96 180 0
execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~
