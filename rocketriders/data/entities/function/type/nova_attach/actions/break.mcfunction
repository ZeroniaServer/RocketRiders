# Redirect function to the brain
execute unless predicate entities:type/nova_attach/brain run return run execute on passengers if predicate entities:type/nova_attach/brain run return run function entities:type/nova_attach/actions/break

execute on vehicle on origin run effect clear @s levitation
execute on vehicle on origin run scoreboard players reset @s flag.is_nova_attached

execute on vehicle run kill @s[predicate=entities:type/nova_attach]
execute on passengers run kill @s[predicate=entities:type/nova_attach]
kill @s[predicate=entities:type/nova_attach]
