## If impact_projectiles is OFF
execute unless predicate game:modifier/impact_projectiles run return run kill @s

## If impact_projectiles is ON
# Move to the player's position
tag @s add canopy_projectile.early_impact.this
execute on origin at @s run tp @e[limit=1,tag=canopy_projectile.early_impact.this] ~ ~ ~
tag @s remove canopy_projectile.early_impact.this

execute at @s unless block ~ ~-1 ~ #custom:air run return run kill @s
execute at @s if block ~ ~-1 ~ #custom:air run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #custom:air run tp @s ~ ~-1 ~
execute at @s unless block ~ ~3 ~ #custom:air run tp @s ~ ~-1 ~
execute at @s unless block ~ ~3 ~ #custom:air run tp @s ~ ~-1 ~

execute at @s unless block ~ ~ ~ #custom:air run return run kill @s
execute at @s unless block ~ ~1 ~ #custom:air run return run kill @s

execute at @s run fill ~ ~1 ~ ~ ~1 ~ jungle_leaves[persistent=false] replace #custom:air

# Prevent deployment inside of portals
execute if entity @s[x=-13,y=37,z=71,dx=50,dy=21,dz=6] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run return run kill @s
execute if entity @s[x=-10,y=36,z=73,dx=44,dy=1,dz=2] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run return run kill @s
execute if entity @s[x=-13,y=37,z=-77,dx=50,dy=21,dz=6] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run return run kill @s
execute if entity @s[x=-10,y=36,z=-75,dx=44,dy=1,dz=2] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield,tag=!noPortal] run return run kill @s
# Prevent deployment near the void
execute if predicate custom:canopy_nearvoid if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] run return run kill @s
# Prevent deployment near spawnpoints
execute if entity @e[distance=..7,type=marker,tag=BlueSpawnZone,limit=1] run return run kill @s
execute if entity @e[distance=..7,type=marker,tag=YellowSpawnZone,limit=1] run return run kill @s
# Prevent deployment inside of portals (crusade)
execute if score $YellowShield crusadehp matches -1000..0 at @s if entity @s[x=0,y=44,z=64,dx=24,dy=12,dz=6] run return run kill @s
execute if score $YellowShield crusadehp matches -1000..0 at @s if entity @s[x=3,y=43,z=66,dx=18,dy=1,dz=2] run return run kill @s
execute if score $BlueShield crusadehp matches -1000..0 at @s if entity @s[x=0,y=44,z=-70,dx=24,dy=12,dz=6] run return run kill @s
execute if score $BlueShield crusadehp matches -1000..0 at @s if entity @s[x=3,y=43,z=-68,dx=18,dy=1,dz=2] run return run kill @s

# Re-initialise as a "canopy" entity
data remove entity @s data.canopy_projectile
tag @s add canopy.small
execute at @s run function entities:canopy/init
