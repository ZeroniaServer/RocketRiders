execute align xyz run tp @s ~0.5 ~0.5 ~0.5

tag @s add vortex.settle_search.this
execute align xyz if entity @e[limit=1,dx=0,predicate=entities:type/vortex/body,tag=!vortex.settle_search.this] run function entities:vortex/tick/settle_search
tag @s remove vortex.settle_search.this

execute on passengers run tag @s[predicate=entities:type/vortex/brain] add vortex.settled
