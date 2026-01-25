# Redirect function to the brain
execute unless entity @s[predicate=entities:type/canopy/brain] run return run execute on vehicle if entity @s[predicate=entities:type/canopy/brain] positioned as @s run return run function entities:canopy/actions/forget

tag @s add canopy.forgotten_origin

# Kill saddle and saddle_link
execute on passengers on origin run kill @s[predicate=entities:type/canopy/saddle]
execute on passengers run kill @s[predicate=entities:type/canopy/saddle_link]
