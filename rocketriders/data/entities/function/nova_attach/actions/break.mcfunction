# Redirect function to the brain
execute on passengers if entity @s[predicate=entities:type/nova_attach/brain] run return run function entities:nova_attach/actions/break

execute on vehicle on origin run effect clear @s levitation
execute on vehicle on origin run scoreboard players reset @s flag.is_nova_attached

execute on vehicle run kill @s[predicate=entities:type/nova_attach]
execute on passengers run kill @s[predicate=entities:type/nova_attach]
kill @s[predicate=entities:type/nova_attach]
