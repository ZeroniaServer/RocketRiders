tag @s remove doing_facade_parkour
title @s actionbar ""

execute if predicate game:phase/match run return 1
execute if entity @s[x=-101,y=202,z=60,dx=12,dy=1,dz=5] run return 1
execute if predicate custom:team/any_playing_team run function custom:player/teleport_to_start
tag @s add teleport_sound
