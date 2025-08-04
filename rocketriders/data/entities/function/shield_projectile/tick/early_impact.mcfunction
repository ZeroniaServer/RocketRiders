# Kill body
execute on vehicle run kill @s[predicate=entities:shield_projectile/body]

## If impact_projectiles is OFF
execute unless predicate game:modifier/impact_projectiles run return run kill @s

## If impact_projectiles is ON
# Prevent deployment inside of portals
execute if entity @s[x=-12,y=33,z=-74,dx=48,dy=28] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noPortal] run return run kill @s
execute if entity @s[x=-12,y=33,z=74,dx=48,dy=28] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noPortal] run return run kill @s
# Prevent deployment near the void
execute if predicate custom:nearvoid run return run kill @s
# Prevent deployment near spawnpoints
execute if entity @e[distance=..3,type=marker,tag=BlueSpawnZone,limit=1] run return run kill @s
execute if entity @e[distance=..3,type=marker,tag=YellowSpawnZone,limit=1] run return run kill @s
# Prevent deployment inside of portals (crusade)
execute if score $BlueShield crusadehp matches -1000..0 if entity @s[x=1,y=40,z=-67,dx=22,dy=19] run return run kill @s
execute if score $YellowShield crusadehp matches -1000..0 if entity @s[x=1,y=40,z=67,dx=22,dy=19] run return run kill @s
# Prevent deployment near flags (ctf)
execute positioned -10 65 -64 as @s[distance=..5] run return run kill @s
execute positioned 34 65 -64 as @s[distance=..5] run return run kill @s
execute positioned -10 65 64 as @s[distance=..5] run return run kill @s
execute positioned 34 65 64 as @s[distance=..5] run return run kill @s

# Convert to a shield entity
data remove entity @s data.shield_projectile
function entities:shield/init
