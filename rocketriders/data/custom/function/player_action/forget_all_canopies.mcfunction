execute unless entity @s[type=player] run return fail

tag @s add matchOrigin
execute as @e[x=0,predicate=entities:type/canopy/brain] if function custom:match_origin run function entities:canopy/actions/forget
tag @s remove matchOrigin

# Stand up if on canopy
execute unless predicate custom:has_vehicle run return fail
execute on vehicle unless entity @s[predicate=entities:type/canopy/saddle] run return fail
execute on vehicle positioned as @s on passengers run tp @s[type=player] ~ ~ ~
tp @s @s
