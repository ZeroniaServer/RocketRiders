#Disable fireballs near portals (depends on Snipe Portals game rule)
execute if score $BlueShield crusadehp matches -1000..0 if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[x=0,type=fireball,tag=NormalFireball] at @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:1}
execute if score $YellowShield crusadehp matches -1000..0 if entity @s[tag=!Explosive,tag=ClutterCollector] as @e[x=0,type=fireball,tag=NormalFireball] at @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if score $YellowShield crusadehp matches -1000..0 if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=fireball,tag=NormalFireball] at @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
execute if score $BlueShield crusadehp matches -1000..0 if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=fireball,tag=NormalFireball] at @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
#Exception for own portal
execute if score $YellowShield crusadehp matches -1000..0 as @e[x=0,type=fireball,tag=FireballYellow] at @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
execute if score $BlueShield crusadehp matches -1000..0 as @e[x=0,type=fireball,tag=FireballBlue] at @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}

#Kill Nova Rockets near own portals
execute if score $YellowShield crusadehp matches -1000..0 as @e[x=0,type=marker,tag=yellownovatracker] at @s if entity @s[x=2,y=37,z=64,dx=20,dy=26,dz=6] run kill @s
execute if score $BlueShield crusadehp matches -1000..0 as @e[x=0,type=marker,tag=bluenovatracker] at @s if entity @s[x=2,y=37,z=-70,dx=20,dy=26,dz=6] run kill @s
#Kill Nova Rockets near other portals (depends on Snipe Portals game rule)
execute if score $YellowShield crusadehp matches -1000..0 if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=marker,tag=novatracker] at @s if entity @s[x=2,y=37,z=64,dx=20,dy=26,dz=6] run kill @s
execute if score $BlueShield crusadehp matches -1000..0 if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=marker,tag=novatracker] at @s if entity @s[x=2,y=37,z=-70,dx=20,dy=26,dz=6] run kill @s

#Next 2 commands disable Blue Obsidian Shields inside of portals
execute if score $BlueShield crusadehp matches -1000..0 as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if score $YellowShield crusadehp matches -1000..0 as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable Yellow Obsidian Shields inside of portals
execute if score $BlueShield crusadehp matches -1000..0 as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if score $YellowShield crusadehp matches -1000..0 as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable general Obsidian Shields inside of portals
execute if score $BlueShield crusadehp matches -1000..0 as @e[x=0,type=marker,tag=obsidianshield] at @s if entity @s[x=1,y=42,z=-68,dz=1,dx=22,dy=16] run kill @s
execute if score $YellowShield crusadehp matches -1000..0 as @e[x=0,type=marker,tag=obsidianshield] at @s if entity @s[x=1,y=42,z=66,dz=1,dx=22,dy=16] run kill @s
