fill -70 201 72 -57 201 84 minecraft:water[level=7] replace minecraft:tinted_glass strict
fill -70 200 72 -57 200 84 minecraft:air replace #custom:modification_room_pool_blocks strict

fill -70 199 72 -57 199 84 minecraft:light[level=15] replace minecraft:black_stained_glass strict
fill -70 199 72 -57 199 84 minecraft:light[level=15] replace minecraft:blackstone strict
fill -70 197 72 -57 197 84 minecraft:light[level=15] replace minecraft:black_stained_glass strict
fill -70 195 72 -57 195 84 minecraft:light[level=15] replace minecraft:black_concrete strict

execute unless score $modification_room_was_open global matches 1 run function lobby:update_nav_book
scoreboard players set $modification_room_was_open global 1
