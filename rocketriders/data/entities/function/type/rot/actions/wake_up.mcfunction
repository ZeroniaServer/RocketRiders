execute unless predicate entities:type/rot/dormant run return fail

kill @s

execute if block ~ ~ ~ #modifiers:rotting_breaks_instantly run return run function entities:type/rot/actions/rot_away
execute summon minecraft:block_display run function entities:type/rot/init/awake
