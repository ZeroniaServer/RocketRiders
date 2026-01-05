# Do nothing if already processed
execute unless entity @s[type=snowball] run return fail
execute if entity @s[predicate=entities:type/vortex_projectile] run return fail

## Return to player if used upon respawning
scoreboard players set $return var 0
execute on origin if score @s time_since_respawn matches ..10 run scoreboard players set $return var 1
execute if score $return var matches 1 run return run function entities:vortex_projectile/init/return_item

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
execute if predicate game:achievements_can_be_awarded on origin run advancement grant @s[tag=!VortexSpawned] only achievements:rr_challenges/veteran VortexSpawned
execute if predicate game:achievements_can_be_awarded on origin run tag @s add VortexSpawned
