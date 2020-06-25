####################################
## CANCEL UTILITY: Kill utilities ##
## near portals or above the roof ##
####################################

#Disable fireballs near portals
execute as @e[type=fireball,tag=!obfireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute as @e[type=fireball,tag=!obfireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute as @e[type=fireball,tag=!obfireball] at @s unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] if entity @e[tag=Selection,tag=!Explosive] run data merge entity @s {ExplosionPower:1}

#Kill fireballs near world border
execute as @e[type=fireball,tag=!obfireball] at @s if entity @s[z=175,dz=180] run kill @s
execute as @e[type=fireball,tag=!obfireball] at @s if entity @s[z=-354,dz=180] run kill @s
execute as @e[type=fireball,tag=!obfireball] at @s if entity @s[x=187,dx=180] run kill @s
execute as @e[type=fireball,tag=!obfireball] at @s if entity @s[x=-342,dx=180] run kill @s

#Kill Nova Rockets near portals
execute as @e[scores={novatimer=1..}] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run kill @s
execute as @e[scores={novatimer=1..}] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run kill @s
execute as @e[tag=novatracker] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run kill @s
execute as @e[tag=novatracker] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run kill @s

#Kill everything near/above the roof (overworld only)
execute in overworld as @e[type=ender_pearl] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=snowball] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=dragon_fireball] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=egg] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=fireball] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=tnt] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=tnt_minecart] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[scores={novatimer=1..}] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[tag=novatracker] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=potion] at @s run kill @s[y=175,dy=100]