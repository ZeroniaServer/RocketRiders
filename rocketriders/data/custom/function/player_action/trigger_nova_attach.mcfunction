execute unless entity @s[type=player] run return fail

tag @s add matchOrigin
execute as @e[x=0,predicate=entities:type/nova_attach/body] if function custom:match_origin run function entities:type/nova_attach/actions/explode
tag @s remove matchOrigin
