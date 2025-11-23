# Do nothing if already processed
execute unless entity @s[type=egg] run return fail
execute if entity @s[predicate=entities:type/vortex_projectile] run return fail

## Set up data
data modify entity @s data.vortex_projectile set value {body:{}}

data modify storage rocketriders:main vortex_projectile.name set value "Vortex Projectile"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Vortex Projectile"], write_to:"storage rocketriders:main vortex_projectile.name"}
data modify entity @s CustomName set from storage rocketriders:main vortex_projectile.name

## Summon brain
tag @s add vortex_projectile.this
data modify storage rocketriders:main vortex_projectile.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:vortex_projectile/init/brain"}}
tag @s remove vortex_projectile.this

## Spawn behaviour
# Veteran achievement
execute if predicate rr:has_achievements if predicate game:match_in_play on origin run advancement grant @s[tag=!VortexSpawned] only achievements:rr_challenges/veteran VortexSpawned
execute on origin run tag @s add VortexSpawned
