#disable fireballs near portals
execute as @e[type=fireball,tag=!obfireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute as @e[type=fireball,tag=!obfireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute as @e[type=fireball,tag=!obfireball] at @s unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}

#kill everything near the roof (overworld only)
execute in overworld as @e[type=ender_pearl] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=snowball] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=dragon_fireball] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=egg] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=fireball] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=tnt] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[tag=missile] at @s run kill @s[y=181,dy=100]