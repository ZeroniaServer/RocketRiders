execute positioned ^ ^ ^1 if block ~ ~ ~ #custom:vortices_ignore align xyz unless entity @e[limit=1,dx=0,predicate=entities:type/vortex] positioned as @s run return run tp @s ^ ^ ^1
execute positioned ^ ^ ^-1 if block ~ ~ ~ #custom:vortices_ignore align xyz unless entity @e[limit=1,dx=0,predicate=entities:type/vortex] positioned as @s run return run tp @s ^ ^ ^-1
execute positioned ^ ^1 ^ if block ~ ~ ~ #custom:vortices_ignore align xyz unless entity @e[limit=1,dx=0,predicate=entities:type/vortex] positioned as @s run return run tp @s ^ ^1 ^
execute positioned ^ ^-1 ^ if block ~ ~ ~ #custom:vortices_ignore align xyz unless entity @e[limit=1,dx=0,predicate=entities:type/vortex] positioned as @s run return run tp @s ^ ^-1 ^
execute positioned ^-1 ^ ^ if block ~ ~ ~ #custom:vortices_ignore align xyz unless entity @e[limit=1,dx=0,predicate=entities:type/vortex] positioned as @s run return run tp @s ^-1 ^ ^
execute positioned ^1 ^ ^ if block ~ ~ ~ #custom:vortices_ignore align xyz unless entity @e[limit=1,dx=0,predicate=entities:type/vortex] positioned as @s run return run tp @s ^1 ^ ^
return fail
