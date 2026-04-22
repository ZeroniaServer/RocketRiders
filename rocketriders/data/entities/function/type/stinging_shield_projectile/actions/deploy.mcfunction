# Redirect function to the brain
execute unless entity @s[predicate=entities:type/stinging_shield_projectile/brain] run return run execute on passengers if entity @s[predicate=entities:type/stinging_shield_projectile/brain] run function entities:type/stinging_shield_projectile/actions/deploy

# Kill body and correct position
execute on vehicle if entity @s[predicate=entities:type/stinging_shield_projectile/body] run function custom:entity/teleport_passengers_to_self_and_die

# Avoid TNT spawning inside of unbreakable platforms in Powerups and Crusade modes
execute if entity @s[x=7,y=53,z=-5,dx=10,dy=0,dz=10] positioned as @s if block ~ ~ ~ #minecraft:stairs if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=powerupsEnabled] align y run tp @s ~ ~1 ~
execute if entity @s[x=7,y=53,z=-5,dx=10,dy=0,dz=10] positioned as @s if block ~ ~ ~ #minecraft:stairs if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] align y run tp @s ~ ~1 ~
execute if entity @s[x=35,y=53,z=-3,dx=6,dy=0,dz=6] positioned as @s if block ~ ~ ~ #minecraft:stairs if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] align y run tp @s ~ ~1 ~
execute if entity @s[x=-17,y=53,z=-3,dx=6,dy=0,dz=6] positioned as @s if block ~ ~ ~ #minecraft:stairs if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] align y run tp @s ~ ~1 ~

# Convert to a stinging_shield entity
data remove entity @s data.stinging_shield_projectile
execute positioned as @s run function entities:type/stinging_shield/init
