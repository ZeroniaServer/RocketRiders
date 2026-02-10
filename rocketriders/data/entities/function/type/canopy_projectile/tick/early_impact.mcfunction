## If impact_utilities is OFF
execute unless predicate game:game_rules/impact_utilities/on run return run function entities:type/canopy_projectile/tick/early_impact_no_deploy

## If impact_utilities is ON
# Move to the player's position
tag @s add canopy_projectile.early_impact.this
execute on origin at @s run tp @e[limit=1,tag=canopy_projectile.early_impact.this] ~ ~ ~
tag @s remove canopy_projectile.early_impact.this

execute at @s unless block ~ ~-1 ~ #custom:air run return run function entities:type/canopy_projectile/tick/early_impact_no_deploy
execute at @s if block ~ ~-1 ~ #custom:air run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #custom:air run tp @s ~ ~-1 ~
execute at @s unless block ~ ~3 ~ #custom:air run tp @s ~ ~-1 ~
execute at @s unless block ~ ~3 ~ #custom:air run tp @s ~ ~-1 ~

execute at @s unless block ~ ~ ~ #custom:air run return run function entities:type/canopy_projectile/tick/early_impact_no_deploy
execute at @s unless block ~ ~1 ~ #custom:air run return run function entities:type/canopy_projectile/tick/early_impact_no_deploy

execute at @s unless predicate entities:canopy_can_be_deployed run return run function entities:type/canopy_projectile/tick/early_impact_no_deploy

# Re-initialise as a "canopy" entity
data remove entity @s data.canopy_projectile
tag @s add canopy.small
execute at @s run function entities:type/canopy/init
