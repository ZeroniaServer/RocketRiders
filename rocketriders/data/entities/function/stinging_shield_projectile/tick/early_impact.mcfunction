# Kill body
execute on vehicle run kill @s[predicate=entities:type/stinging_shield_projectile/body]

## If impact_projectiles is OFF
execute unless predicate game:modifier/impact_projectiles run return run function entities:stinging_shield_projectile/actions/break

## If impact_projectiles is ON
# Prevent deployment when out of bounds
execute if entity @s[x=-12,y=36,z=-74,dx=48,dy=25,dz=0] run return run function entities:stinging_shield_projectile/actions/break
execute if entity @s[x=-12,y=36,z=74,dx=48,dy=25,dz=0] run return run function entities:stinging_shield_projectile/actions/break
execute if predicate custom:nearvoid run return run function entities:stinging_shield_projectile/actions/break
execute if entity @s[y=175,dy=100] run return run function entities:stinging_shield_projectile/actions/break
execute unless predicate custom:insideborder run return run function entities:stinging_shield_projectile/actions/break
# Prevent deployment inside of portals
execute if entity @s[x=-12,y=33,z=-74,dx=48,dy=28] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,predicate=!game:gamemode_components/no_portal] run return run function entities:stinging_shield_projectile/actions/break
execute if entity @s[x=-12,y=33,z=74,dx=48,dy=28] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,predicate=!game:gamemode_components/no_portal] run return run function entities:stinging_shield_projectile/actions/break
# Prevent deployment near spawnpoints
execute if entity @e[distance=..3,type=marker,tag=BlueSpawnZone,limit=1] run return run function entities:stinging_shield_projectile/actions/break
execute if entity @e[distance=..3,type=marker,tag=YellowSpawnZone,limit=1] run return run function entities:stinging_shield_projectile/actions/break
# Prevent deployment inside of portals (crusade)
execute if score $BlueShield crusadehp matches -1000..0 if entity @s[x=1,y=40,z=-67,dx=22,dy=19] run return run function entities:stinging_shield_projectile/actions/break
execute if score $YellowShield crusadehp matches -1000..0 if entity @s[x=1,y=40,z=67,dx=22,dy=19] run return run function entities:stinging_shield_projectile/actions/break
# Prevent deployment near flags (ctf)
execute if predicate custom:near_flag_base run return run function entities:stinging_shield_projectile/actions/break

# Re-initialise as a "stinging_shield" entity
data remove entity @s data.stinging_shield_projectile
execute at @s run tp ~ ~2 ~
execute at @s run function entities:stinging_shield/init
