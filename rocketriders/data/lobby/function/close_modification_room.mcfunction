fill -70 201 72 -57 201 84 minecraft:tinted_glass replace #custom:modification_room_pool_blocks strict
fill -70 200 72 -57 200 84 minecraft:water replace #custom:modification_room_pool_blocks strict

fill -70 199 72 -57 199 84 minecraft:black_stained_glass replace #custom:modification_room_pool_blocks strict
fill -70 197 72 -57 197 84 minecraft:black_stained_glass replace #custom:modification_room_pool_blocks strict
fill -70 195 72 -57 195 84 minecraft:black_concrete replace #custom:modification_room_pool_blocks strict

execute unless predicate rr:has_modification_room run fill -57 199 84 -70 199 72 minecraft:blackstone replace minecraft:black_stained_glass

scoreboard players reset $modification_room_was_open global
