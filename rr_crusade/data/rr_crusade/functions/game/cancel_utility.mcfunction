#Disable fireballs near portals (depends on Snipe Portals game rule)
execute if score $BlueShield crusadehp matches -1000..0 if entity @s[tag=!Explosive,tag=!ClutterCollector] as @e[type=fireball,tag=NormalFireball] at @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:1}
execute if score $YellowShield crusadehp matches -1000..0 if entity @s[tag=!Explosive,tag=ClutterCollector] as @e[type=fireball,tag=NormalFireball] at @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if score $YellowShield crusadehp matches -1000..0 if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=NormalFireball] at @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
execute if score $BlueShield crusadehp matches -1000..0 if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=fireball,tag=NormalFireball] at @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
#Exception for own portal
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=fireball,tag=FireballYellow] at @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=fireball,tag=FireballBlue] at @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}

#Kill Nova Rockets near own portals
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=marker,tag=yellownovatracker] at @s if entity @s[x=2,y=37,z=64,dx=20,dy=26,dz=6] run kill @s
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=marker,tag=bluenovatracker] at @s if entity @s[x=2,y=37,z=-70,dx=20,dy=26,dz=6] run kill @s
#Kill Nova Rockets near other portals (depends on Snipe Portals game rule)
execute if score $YellowShield crusadehp matches -1000..0 if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=marker,tag=novatracker] at @s if entity @s[x=2,y=37,z=64,dx=20,dy=26,dz=6] run kill @s
execute if score $BlueShield crusadehp matches -1000..0 if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[type=marker,tag=novatracker] at @s if entity @s[x=2,y=37,z=-70,dx=20,dy=26,dz=6] run kill @s

#Next 4 commands disable Yellow Canopies inside of portals
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @s[x=0,y=44,z=64,dx=24,dy=12,dz=6] run scoreboard players remove @s testplat 1
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @s[x=3,y=43,z=66,dx=18,dy=1,dz=2] run scoreboard players remove @s testplat 2
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @s[x=0,y=44,z=-70,dx=24,dy=12,dz=6] run scoreboard players remove @s testplat 1
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=ender_pearl,scores={testplat=9..10}] at @s if entity @s[x=3,y=43,z=-68,dx=18,dy=1,dz=2] run scoreboard players remove @s testplat 2

#Next 4 commands disable Blue Canopies inside of portals
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=0,y=44,z=64,dx=24,dy=12,dz=6] run scoreboard players remove @s testplat2 1
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=3,y=43,z=66,dx=18,dy=1,dz=2] run scoreboard players remove @s testplat2 2
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=0,y=44,z=-70,dx=24,dy=12,dz=6] run scoreboard players remove @s testplat2 1
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=ender_pearl,scores={testplat2=9..10}] at @s if entity @s[x=3,y=43,z=-68,dx=18,dy=1,dz=2] run scoreboard players remove @s testplat2 2

#Next 2 commands disable Blue Obsidian Shields inside of portals
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=marker,tag=blueobalone] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=marker,tag=blueobalone] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable Yellow Obsidian Shields inside of portals
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=marker,tag=yellowobalone] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=marker,tag=yellowobalone] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable Obsidian Shields inside of portals in general (need to remove temporary entities)
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=area_effect_cloud,tag=tempobshield] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=area_effect_cloud,tag=tempobshield] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable Yellow Shields inside of portals
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=snowball,tag=YellowShield,scores={shieldtest=19..20}] at @s if entity @s[x=1,y=40,z=-67,dx=22,dy=19] run scoreboard players remove @s shieldtest 2
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=snowball,tag=YellowShield,scores={shieldtest=19..20}] at @s if entity @s[x=1,y=40,z=67,dx=22,dy=19] run scoreboard players remove @s shieldtest 2

#Next 2 commands disable Blue Shields inside of portals
execute if score $BlueShield crusadehp matches -1000..0 as @e[type=snowball,tag=BlueShield,scores={shieldtest2=19..20}] at @s if entity @s[x=1,y=40,z=-67,dx=22,dy=19] run scoreboard players remove @s shieldtest2 2
execute if score $YellowShield crusadehp matches -1000..0 as @e[type=snowball,tag=BlueShield,scores={shieldtest2=19..20}] at @s if entity @s[x=1,y=40,z=67,dx=22,dy=19] run scoreboard players remove @s shieldtest2 2

##Special ICBM override
#Teleport trackers to matching ICBMs + detect trigger conditions
execute as @e[type=marker,tag=ICBMtracker] at @s run function rr_crusade:game/tptoicbm

#Kill eggs that didn't teleport
kill @e[type=egg,tag=ICBM,tag=!teleported]
tag @e[type=egg,tag=ICBM] remove teleported