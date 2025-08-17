# Do nothing if already processed
execute unless entity @s[type=snowball] run return fail
execute if entity @s[predicate=entities:type/stinging_shield_projectile] run return fail

## Set up data
data modify entity @s data.stinging_shield_projectile set value {body:{}}

data modify storage rocketriders:main stinging_shield_projectile.name set value "Stinging Shield Projectile"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Stinging Shield Projectile"], write_to:"storage rocketriders:main stinging_shield_projectile.name"}
data modify entity @s CustomName set from storage rocketriders:main stinging_shield_projectile.name

## Summon brain
tag @s add stinging_shield_projectile.this
data modify storage rocketriders:main stinging_shield_projectile.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:stinging_shield_projectile/init/brain"}}
tag @s remove stinging_shield_projectile.this
