# Do nothing if already processed
execute unless entity @s[type=marker] run return fail
execute if entity @s[predicate=entities:type/rot/brain] run return fail

## Set up data
data modify entity @s data.rot set value {brain:{},dormant:{}}

# Stay dormant for up to 2 seconds before appearing (lasts much longer for rot outside of the primary rot zone). Gets automatically interupted if a player breaks adjacent rot.
execute store result score @s entity.age run random value -40..-1

## Spawn behaviour
execute align xyz run tp @s ~0.5 ~0.5 ~0.5
