#Next 2 commands disable Blue Obsidian Shields inside of portals
execute if predicate game:blue_portal_revealed as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if predicate game:yellow_portal_revealed as @e[x=0,type=marker,tag=blueobalone] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable Yellow Obsidian Shields inside of portals
execute if predicate game:blue_portal_revealed as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=1,y=42,z=-67,dx=22,dy=16] run kill @s
execute if predicate game:yellow_portal_revealed as @e[x=0,type=marker,tag=yellowobalone] at @s if entity @s[x=1,y=42,z=67,dx=22,dy=16] run kill @s

#Next 2 commands disable general Obsidian Shields inside of portals
execute if predicate game:blue_portal_revealed as @e[x=0,type=marker,tag=obsidianshield] at @s if entity @s[x=1,y=42,z=-68,dz=1,dx=22,dy=16] run kill @s
execute if predicate game:yellow_portal_revealed as @e[x=0,type=marker,tag=obsidianshield] at @s if entity @s[x=1,y=42,z=66,dz=1,dx=22,dy=16] run kill @s
