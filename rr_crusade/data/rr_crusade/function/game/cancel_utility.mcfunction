#Disable fireballs near portals (depends on Snipe Portals game rule)
execute if predicate rr_crusade:blue_portal_revealed unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=NormalFireball] at @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:1}
execute if predicate rr_crusade:yellow_portal_revealed unless predicate game:modifiers/explosive/on if predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=NormalFireball] at @s unless entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] unless entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if predicate rr_crusade:yellow_portal_revealed if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=fireball,tag=NormalFireball] at @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
execute if predicate rr_crusade:blue_portal_revealed if entity @s[tag=!doFireballPortals] unless entity @s[tag=fbPortalsOff] as @e[x=0,type=fireball,tag=NormalFireball] at @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
#Exception for own portal
execute if predicate rr_crusade:yellow_portal_revealed as @e[x=0,type=fireball,tag=FireballYellow] at @s if entity @s[x=2,y=43,z=66,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}
execute if predicate rr_crusade:blue_portal_revealed as @e[x=0,type=fireball,tag=FireballBlue] at @s if entity @s[x=2,y=43,z=-68,dx=20,dy=14,dz=2] run data merge entity @s {ExplosionPower:0}

#Next 2 commands disable Blue Obsidian Shields inside of portals
execute if predicate rr_crusade:blue_portal_revealed as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if predicate rr_crusade:yellow_portal_revealed as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable Yellow Obsidian Shields inside of portals
execute if predicate rr_crusade:blue_portal_revealed as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if predicate rr_crusade:yellow_portal_revealed as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable general Obsidian Shields inside of portals
execute if predicate rr_crusade:blue_portal_revealed as @e[x=0,type=marker,tag=obsidianshield] at @s if entity @s[x=1,y=42,z=-68,dz=1,dx=22,dy=16] run kill @s
execute if predicate rr_crusade:yellow_portal_revealed as @e[x=0,type=marker,tag=obsidianshield] at @s if entity @s[x=1,y=42,z=66,dz=1,dx=22,dy=16] run kill @s
