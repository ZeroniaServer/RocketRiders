tag @s remove doing_facade_parkour
title @s actionbar ""

execute if predicate game:phase/match run return 1
execute if entity @s[x=-101,y=202,z=60,dx=12,dy=1,dz=5] run return 1
tp @s[predicate=custom:team/blue] -95 202 60 0 0
tp @s[predicate=custom:team/yellow] -95 202 96 180 0
tag @s add teleport_sound
