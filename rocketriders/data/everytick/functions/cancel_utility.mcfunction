####################################
## CANCEL UTILITY: Kill utilities ##
## near portals or above the roof ##
####################################

#Disable fireballs near portals (depends on Fireball Portals option)
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[type=fireball,tag=NormalFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}
execute if entity @s[tag=!Explosive,tag=ClutterCollector] as @e[type=fireball,tag=NormalFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=NormalFireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=NormalFireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
#Exception for own portal
execute as @e[type=fireball,tag=FireballYellow] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute as @e[type=fireball,tag=FireballBlue] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}

#Kill Nova Rockets near own portals
execute unless entity @s[tag=noPortal] as @e[type=marker,tag=yellownovatracker] at @s if entity @s[x=-11,y=30,z=71,dx=46,dy=32,dz=6] run kill @s
execute unless entity @s[tag=noPortal] as @e[type=marker,tag=bluenovatracker] at @s if entity @s[x=-11,y=30,z=-77,dx=46,dy=32,dz=6] run kill @s
#Kill Nova Rockets near other portals (depends on Fireball Portals option)
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=marker,tag=novatracker] at @s if entity @s[x=-11,y=30,z=71,dx=46,dy=32,dz=6] run kill @s
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=marker,tag=novatracker] at @s if entity @s[x=-11,y=30,z=-77,dx=46,dy=32,dz=6] run kill @s

#Kill everything near/above the roof (overworld only)
execute in overworld as @e[type=ender_pearl] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=snowball] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=dragon_fireball] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=egg] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=fireball] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=tnt] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=tnt_minecart] at @s run kill @s[y=181,dy=100]
execute in overworld as @e[type=marker,tag=novatracker] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=firework_rocket,scores={novatimer=1..}] at @s run kill @s[y=175,dy=100]
execute in overworld as @e[type=potion] at @s run kill @s[y=175,dy=100]

#Kill everything near world border
execute as @e[type=arrow] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=ender_pearl] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=snowball] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=dragon_fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=egg] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=tnt] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=tnt_minecart] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=marker,tag=novatracker] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=firework_rocket,scores={novatimer=1..}] at @s unless predicate custom:insideborder run kill @s
execute as @e[type=potion] at @s unless predicate custom:insideborder run kill @s