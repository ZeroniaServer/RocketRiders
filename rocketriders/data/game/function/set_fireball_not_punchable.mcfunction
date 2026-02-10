# Do nothing if not a fireball or dragon fireball
execute unless entity @s[type=#custom:large_fireballs] run return fail

# Do nothing if already masked
execute on passengers if entity @s[predicate=entities:type/fireball_mask] run return fail

# Summon and mount the mask onto this fireball
tag @s add set_fireball_not_punchable.target
execute at @s summon interaction if function entities:type/fireball_mask/init run ride @s mount @e[limit=1,distance=..0.01,type=#custom:large_fireballs,tag=set_fireball_not_punchable.target]
tag @s remove set_fireball_not_punchable.target
