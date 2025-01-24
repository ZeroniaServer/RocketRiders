advancement revoke @s only rr_crusade:use_book
advancement revoke @s only rr_crusade:book_cooldown

execute unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_main_3 run tellraw @s ["",{"text":"Selected Spell: ","color":"#ca00ca","italic":true},{"text":"Fire 🔥","color":"gold"}]
execute unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_offhand_3 run tellraw @s ["",{"text":"Selected Spell: ","color":"#ca00ca","italic":true},{"text":"Fire 🔥","color":"gold"}]

execute unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_main_0 run tellraw @s ["",{"text":"Selected Spell: ","color":"#ca00ca","italic":true},{"text":"Health ❤","color":"red"}]
execute unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_offhand_0 run tellraw @s ["",{"text":"Selected Spell: ","color":"#ca00ca","italic":true},{"text":"Health ❤","color":"red"}]

execute unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_main_1 run tellraw @s ["",{"text":"Selected Spell: ","color":"#ca00ca","italic":true},{"text":"Damage ☠","color":"gray"}]
execute unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_offhand_1 run tellraw @s ["",{"text":"Selected Spell: ","color":"#ca00ca","italic":true},{"text":"Damage ☠","color":"gray"}]

execute unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_main_2 run tellraw @s ["",{"text":"Selected Spell: ","color":"#ca00ca","italic":true},{"text":"Wind 🌀","color":"aqua"}]
execute unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_offhand_2 run tellraw @s ["",{"text":"Selected Spell: ","color":"#ca00ca","italic":true},{"text":"Wind 🌀","color":"aqua"}]

execute unless score @s impulse_cooldown matches 1.. at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1
execute unless score @s impulse_cooldown matches 1.. at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 2

scoreboard players set #replaced impulse_cooldown 0
execute if score #replaced impulse_cooldown matches 0 unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_main_0 store success score #replaced impulse_cooldown run loot replace entity @s weapon.mainhand loot rr_crusade:book_1

execute if score #replaced impulse_cooldown matches 0 unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_offhand_0 store success score #replaced impulse_cooldown run loot replace entity @s weapon.offhand loot rr_crusade:book_1

execute if score #replaced impulse_cooldown matches 0 unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_main_1 store success score #replaced impulse_cooldown run loot replace entity @s weapon.mainhand loot rr_crusade:book_2

execute if score #replaced impulse_cooldown matches 0 unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_offhand_1 store success score #replaced impulse_cooldown run loot replace entity @s weapon.offhand loot rr_crusade:book_2

execute if score #replaced impulse_cooldown matches 0 unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_main_2 store success score #replaced impulse_cooldown run loot replace entity @s weapon.mainhand loot rr_crusade:book_3

execute if score #replaced impulse_cooldown matches 0 unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_offhand_2 store success score #replaced impulse_cooldown run loot replace entity @s weapon.offhand loot rr_crusade:book_3

execute if score #replaced impulse_cooldown matches 0 unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_main_3 store success score #replaced impulse_cooldown run loot replace entity @s weapon.mainhand loot rr_crusade:book_0

execute if score #replaced impulse_cooldown matches 0 unless score @s impulse_cooldown matches 1.. if predicate rr_crusade:book_offhand_3 store success score #replaced impulse_cooldown run loot replace entity @s weapon.offhand loot rr_crusade:book_0

scoreboard players set @s impulse_cooldown 2