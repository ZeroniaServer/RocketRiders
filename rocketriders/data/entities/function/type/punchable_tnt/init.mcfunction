# Do nothing if already processed
execute unless entity @s[type=tnt] run return fail
execute if entity @s[predicate=entities:type/punchable_tnt] run return fail

## Set up data
data modify entity @s data.punchable_tnt set value {body:{}}

execute store result score $base_age var run data get entity @s fuse -1
execute if score $base_age var matches 0 unless data entity @s fuse on passengers on passengers run scoreboard players set $base_age var -80
scoreboard players add $base_age var 1

execute if score $base_age var matches -15.. run return fail

## Summon neck
tag @s add punchable_tnt.this.body
execute at @s summon interaction run function entities:type/punchable_tnt/init/neck
tag @s remove punchable_tnt.this.body
