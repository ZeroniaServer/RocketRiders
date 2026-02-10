# Do nothing if already processed
execute unless entity @s[type=interaction] run return fail
execute if entity @s[predicate=entities:type/fireball_mask] run return fail

## Set up data
data modify entity @s data.fireball_mask set value {mount:{}}
data merge entity @s {width:0,height:1.01}

## Summon brain
tag @s add fireball_mask.this
execute at @s summon interaction run function entities:type/fireball_mask/init/cover
tag @s remove fireball_mask.this

return 1
