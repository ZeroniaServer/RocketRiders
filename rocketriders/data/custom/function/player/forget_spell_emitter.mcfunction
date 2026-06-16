execute unless entity @s[type=player] run return fail

tag @s add matchOrigin
execute as @e[x=0,predicate=entities:type/spell_emitter] if function custom:match_origin run kill @s
tag @s remove matchOrigin
