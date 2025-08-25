execute unless entity @s[type=player] run return fail

tag @s add matchOrigin
execute as @e[x=0,predicate=entities:type/nova_attach/brain] if function custom:match_origin run tag @s add nova_attach.forgotten_origin
tag @s remove matchOrigin
