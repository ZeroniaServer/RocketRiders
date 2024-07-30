####################################
## CANCEL UTILITY: Kill utilities ##
## near portals or above the roof ##
####################################

#Disable fireballs near portals (depends on Snipe Portals game rule)
execute if entity @s[tag=!noPortal,tag=!Explosive,tag=!ClutterCollector] as @e[x=0,type=fireball,tag=NormalFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}
execute if entity @s[tag=!noPortal,tag=!Explosive,tag=ClutterCollector] as @e[x=0,type=fireball,tag=NormalFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if entity @s[tag=!noPortal,tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=fireball,tag=NormalFireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if entity @s[tag=!noPortal,tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=fireball,tag=NormalFireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
#Exception for own portal
execute if entity @s[tag=!noPortal] as @e[x=0,type=fireball,tag=FireballYellow] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if entity @s[tag=!noPortal] as @e[x=0,type=fireball,tag=FireballBlue] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}

#Kill Nova Rockets near own portals
execute unless entity @s[tag=noPortal] as @e[x=0,type=marker,tag=yellownovatracker] at @s if entity @s[x=-11,y=30,z=71,dx=46,dy=32,dz=6] run kill @s
execute unless entity @s[tag=noPortal] as @e[x=0,type=marker,tag=bluenovatracker] at @s if entity @s[x=-11,y=30,z=-77,dx=46,dy=32,dz=6] run kill @s
#Kill Nova Rockets near other portals (depends on Snipe Portals game rule)
execute if entity @s[tag=!doFireballPortals,tag=!noPortal] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=marker,tag=novatracker] at @s if entity @s[x=-11,y=30,z=71,dx=46,dy=32,dz=6] run kill @s
execute if entity @s[tag=!doFireballPortals,tag=!noPortal] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=marker,tag=novatracker] at @s if entity @s[x=-11,y=30,z=-77,dx=46,dy=32,dz=6] run kill @s

#Kill everything near/above the roof
execute as @e[x=0,type=ender_pearl] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=snowball] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=dragon_fireball] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=egg] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=fireball] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=tnt] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=tnt_minecart] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=marker,tag=novatracker] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=firework_rocket,scores={novatimer=1..}] at @s run kill @s[y=160,dy=115]
execute as @e[x=0,type=potion] at @s run kill @s[y=160,dy=115]

#Kill everything near world border
execute as @e[x=0,type=arrow] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=ender_pearl] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=snowball] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=dragon_fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=egg] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=tnt] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=tnt_minecart] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=marker,tag=novatracker] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=firework_rocket,scores={novatimer=1..}] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=potion] at @s unless predicate custom:insideborder run kill @s