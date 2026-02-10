# Redirect function to the brain
execute unless entity @s[predicate=entities:type/canopy/brain] run return run execute on vehicle if entity @s[predicate=entities:type/canopy/brain] positioned as @s run return run function entities:type/canopy/actions/kill

execute at @s on passengers on origin on passengers if entity @s[type=player] run tag @s remove force_mount
execute at @s on passengers on origin on passengers if entity @s[type=player] run tp @s ~ ~2 ~
execute at @s on passengers on origin on passengers if entity @s[type=player] run tp @s @s

execute at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 oak_leaves[persistent=false,distance=1] replace oak_leaves
execute at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 spruce_leaves[persistent=false,distance=1] replace spruce_leaves
execute at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 jungle_leaves[persistent=false,distance=1] replace jungle_leaves
execute at @s run fill ~3 ~ ~-3 ~-3 ~ ~3 birch_leaves[persistent=false,distance=1] replace birch_leaves
execute at @s if block ~ ~ ~ oak_wood run setblock ~ ~ ~ air destroy
execute at @s if block ~ ~1 ~ oak_wood run setblock ~ ~1 ~ air destroy
execute at @s run fill ~-3 ~-3 ~-3 ~3 ~2 ~3 air replace moving_piston{blockState:{Name:"minecraft:oak_wood"}}
execute at @s if block ~1 ~1 ~ #minecraft:banners run setblock ~1 ~1 ~ air destroy
execute at @s if block ~-1 ~1 ~ #minecraft:banners run setblock ~-1 ~1 ~ air destroy
execute at @s if block ~ ~1 ~1 #minecraft:banners run setblock ~ ~1 ~1 air destroy
execute at @s if block ~ ~1 ~-1 #minecraft:banners run setblock ~ ~1 ~-1 air destroy

# Kill entity stack
execute on vehicle run kill @s[predicate=entities:type/canopy]
execute on passengers on origin run kill @s[predicate=entities:type/canopy]
execute on passengers run kill @s[predicate=entities:type/canopy]
kill @s[predicate=entities:type/canopy]
