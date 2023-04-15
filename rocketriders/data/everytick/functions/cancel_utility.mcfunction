####################################
## CANCEL UTILITY: Kill utilities ##
## near portals or above the roof ##
####################################

#Disable fireballs near portals (depends on Snipe Portals game rule)
execute if entity @s[tag=!noPortal,tag=!Explosive,tag=!ClutterCollector] as @e[predicate=custom:indimension,type=fireball,tag=NormalFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}
execute if entity @s[tag=!noPortal,tag=!Explosive,tag=ClutterCollector] as @e[predicate=custom:indimension,type=fireball,tag=NormalFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if entity @s[tag=!noPortal,tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[predicate=custom:indimension,type=fireball,tag=NormalFireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if entity @s[tag=!noPortal,tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[predicate=custom:indimension,type=fireball,tag=NormalFireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
#Exception for own portal
execute if entity @s[tag=!noPortal] as @e[predicate=custom:indimension,type=fireball,tag=FireballYellow] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if entity @s[tag=!noPortal] as @e[predicate=custom:indimension,type=fireball,tag=FireballBlue] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}

#Kill Nova Rockets near own portals
execute unless entity @s[tag=noPortal] as @e[predicate=custom:indimension,type=marker,tag=yellownovatracker] at @s if entity @s[x=-11,y=30,z=71,dx=46,dy=32,dz=6] run kill @s
execute unless entity @s[tag=noPortal] as @e[predicate=custom:indimension,type=marker,tag=bluenovatracker] at @s if entity @s[x=-11,y=30,z=-77,dx=46,dy=32,dz=6] run kill @s
#Kill Nova Rockets near other portals (depends on Snipe Portals game rule)
execute if entity @s[tag=!doFireballPortals,tag=!noPortal] unless entity @s[tag=fbPortalsOff] as @e[predicate=custom:indimension,type=marker,tag=novatracker] at @s if entity @s[x=-11,y=30,z=71,dx=46,dy=32,dz=6] run kill @s
execute if entity @s[tag=!doFireballPortals,tag=!noPortal] unless entity @s[tag=fbPortalsOff] as @e[predicate=custom:indimension,type=marker,tag=novatracker] at @s if entity @s[x=-11,y=30,z=-77,dx=46,dy=32,dz=6] run kill @s

#Kill everything near/above the roof
execute as @e[predicate=custom:indimension,type=ender_pearl] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=snowball] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=dragon_fireball] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=egg] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=fireball] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=tnt] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=tnt_minecart] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=marker,tag=novatracker] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=firework_rocket,scores={novatimer=1..}] at @s run kill @s[y=175,dy=100]
execute as @e[predicate=custom:indimension,type=potion] at @s run kill @s[y=175,dy=100]

#Kill everything near world border
execute as @e[predicate=custom:indimension,type=arrow] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=ender_pearl] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=snowball] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=dragon_fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=egg] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=tnt] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=tnt_minecart] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=marker,tag=novatracker] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=firework_rocket,scores={novatimer=1..}] at @s unless predicate custom:insideborder run kill @s
execute as @e[predicate=custom:indimension,type=potion] at @s unless predicate custom:insideborder run kill @s