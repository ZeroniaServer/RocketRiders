# Do nothing if already processed
execute unless entity @s[type=ender_pearl] run return fail
execute if entity @s[predicate=entities:type/canopy_projectile] run return fail

## Return to player if used upon respawning
scoreboard players set $return var 0
execute on origin if score @s time_since_respawn matches ..10 run scoreboard players set $return var 1
execute if score $return var matches 1 run return run function entities:type/canopy_projectile/init/return_item

## Set up data
data modify entity @s data.canopy_projectile set value {body:{}}

data modify storage rocketriders:main canopy_projectile.name set value "Canopy Projectile"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Canopy Projectile"], write_to:"storage rocketriders:main canopy_projectile.name"}
data modify entity @s CustomName set from storage rocketriders:main canopy_projectile.name

## Achievements
execute if predicate game:achievements_can_be_awarded on origin run advancement grant @s only achievements:rr_challenges/veteran CanopySpawned
execute if predicate game:achievements_can_be_awarded on origin run tag @s add CanopySpawned

## Summon brain
tag @s add canopy_projectile.this
data modify storage rocketriders:main canopy_projectile.origin set from entity @s Owner
execute at @s run function custom:summon_persistent_marker_aec {modifiers:{run:"function entities:type/canopy_projectile/init/brain"}}
tag @s remove canopy_projectile.this
