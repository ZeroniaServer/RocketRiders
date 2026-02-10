# Do nothing if already processed
execute unless entity @s[type=item_display] run return fail
execute if entity @s[predicate=entities:type/vortex_decoy] run return fail

## Set up data
data modify entity @s data.vortex_decoy set value {}

data modify entity @s CustomName set value "Vortex Decoy"

## Display
data merge entity @s {item_display:"fixed",teleport_duration:10,transformation:{scale:[0.6,0.6,0.6],translation:[-0.03125,0.0125,0]}}
item replace entity @s contents with ender_pearl
