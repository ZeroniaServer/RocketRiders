####################################
## CANCEL UTILITY: Kill utilities ##
## near portals or above the roof ##
####################################

#Disable fireballs near portals (depends on Snipe Portals game rule)
execute if predicate game:portal_type/default unless predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=NormalFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:1}
execute if predicate game:portal_type/default unless predicate game:modifiers/explosive/on if predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=NormalFireball] at @s unless entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] unless entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:-1}
execute if predicate game:portal_type/default if entity @s[tag=!doFireballPortals,tag=!fbPortalsOff] as @e[x=0,type=fireball,tag=NormalFireball] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if predicate game:portal_type/default if entity @s[tag=!doFireballPortals,tag=!fbPortalsOff] as @e[x=0,type=fireball,tag=NormalFireball] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
#Exception for own portal
execute if predicate game:portal_type/default as @e[x=0,type=fireball,tag=FireballYellow] at @s if entity @s[x=-11,y=36,z=73,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}
execute if predicate game:portal_type/default as @e[x=0,type=fireball,tag=FireballBlue] at @s if entity @s[x=-11,y=36,z=-75,dx=46,dy=23,dz=2] run data merge entity @s {ExplosionPower:0}

#Kill everything near/above the roof
execute as @e[x=0,type=ender_pearl,predicate=custom:above_roof] run function entities:canopy_projectile/actions/break
execute as @e[x=0,type=snowball] at @s run kill @s[predicate=custom:above_roof]
execute as @e[x=0,type=dragon_fireball] at @s run kill @s[predicate=custom:above_roof]
execute as @e[x=0,type=egg] at @s run kill @s[predicate=custom:above_roof]
execute as @e[x=0,type=fireball] at @s run kill @s[predicate=custom:above_roof]
execute as @e[x=0,type=tnt] at @s run kill @s[predicate=custom:above_roof]
execute as @e[x=0,type=tnt_minecart] at @s run kill @s[predicate=custom:above_roof]
execute as @e[x=0,type=#custom:potion] at @s run kill @s[predicate=custom:above_roof]

#Kill everything below void
kill @e[x=0,type=ender_pearl,predicate=custom:in_void]
kill @e[x=0,type=snowball,predicate=custom:in_void]
kill @e[x=0,type=dragon_fireball,predicate=custom:in_void]
kill @e[x=0,type=egg,predicate=custom:in_void]
kill @e[x=0,type=fireball,predicate=custom:in_void]
kill @e[x=0,type=tnt,predicate=custom:in_void]
kill @e[x=0,type=tnt_minecart,predicate=custom:in_void]
kill @e[x=0,type=firework_rocket,scores={novatimer=1..},predicate=custom:in_void]
kill @e[x=0,type=#custom:potion,predicate=custom:in_void]

#Kill everything near world border
execute as @e[x=0,type=#arrows] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=ender_pearl] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=snowball] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=dragon_fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=egg] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=tnt] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=tnt_minecart] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=#custom:potion] at @s unless predicate custom:insideborder run kill @s