#Disable fireballs near portals (depends on Snipe Portals game rule)
execute if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[type=fireball,tag=NormalFireball] at @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:1}
execute if entity @s[tag=!Explosive,tag=ClutterCollector] as @e[type=fireball,tag=NormalFireball] at @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=NormalFireball] at @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=NormalFireball] at @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
#Exception for own portal
execute as @e[type=fireball,tag=FireballYellow] at @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
execute as @e[type=fireball,tag=FireballBlue] at @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}

#Kill Nova Rockets near own portals
execute unless entity @s[tag=noPortal] as @e[type=marker,tag=yellownovatracker] at @s if entity @s[x=2,y=43,z=64,dx=20,dy=14,dz=6] run kill @s
execute unless entity @s[tag=noPortal] as @e[type=marker,tag=bluenovatracker] at @s if entity @s[x=2,y=43,z=-70,dx=20,dy=14,dz=6] run kill @s
#Kill Nova Rockets near other portals (depends on Snipe Portals game rule)
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=marker,tag=novatracker] at @s if entity @s[x=2,y=43,z=64,dx=20,dy=14,dz=6] run kill @s
execute if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=marker,tag=novatracker] at @s if entity @s[x=2,y=43,z=-70,dx=20,dy=14,dz=6] run kill @s