advancement revoke @s only rr_crusade:use_book
advancement revoke @s only rr_crusade:book_cooldown

execute if score @s impulse_cooldown matches 1.. run return run scoreboard players set @s impulse_cooldown 2

execute if predicate rr_crusade:book_main_3 run title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Fire","color":"gold"}]
execute if predicate rr_crusade:book_offhand_3 run title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Fire","color":"gold"}]

execute if predicate rr_crusade:book_main_0 run title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Health","color":"red"}]
execute if predicate rr_crusade:book_offhand_0 run title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Health","color":"red"}]

execute if predicate rr_crusade:book_main_1 run title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Damage","color":"gray"}]
execute if predicate rr_crusade:book_offhand_1 run title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Damage","color":"gray"}]

execute if predicate rr_crusade:book_main_2 run title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Wind","color":"aqua"}]
execute if predicate rr_crusade:book_offhand_2 run title @s actionbar ["",{"text":"Selected Spell: ","color":"#ca00ca"},{"text":"Wind","color":"aqua"}]

execute at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 2

scoreboard players set #replaced impulse_cooldown 0
execute if score #replaced impulse_cooldown matches 0 if predicate rr_crusade:book_main_0 store success score #replaced impulse_cooldown run loot replace entity @s weapon.mainhand loot rr_crusade:book_1

execute if score #replaced impulse_cooldown matches 0 if predicate rr_crusade:book_offhand_0 store success score #replaced impulse_cooldown run loot replace entity @s weapon.offhand loot rr_crusade:book_1

execute if score #replaced impulse_cooldown matches 0 if predicate rr_crusade:book_main_1 store success score #replaced impulse_cooldown run loot replace entity @s weapon.mainhand loot rr_crusade:book_2

execute if score #replaced impulse_cooldown matches 0 if predicate rr_crusade:book_offhand_1 store success score #replaced impulse_cooldown run loot replace entity @s weapon.offhand loot rr_crusade:book_2

execute if score #replaced impulse_cooldown matches 0 if predicate rr_crusade:book_main_2 store success score #replaced impulse_cooldown run loot replace entity @s weapon.mainhand loot rr_crusade:book_3

execute if score #replaced impulse_cooldown matches 0 if predicate rr_crusade:book_offhand_2 store success score #replaced impulse_cooldown run loot replace entity @s weapon.offhand loot rr_crusade:book_3

execute if score #replaced impulse_cooldown matches 0 if predicate rr_crusade:book_main_3 store success score #replaced impulse_cooldown run loot replace entity @s weapon.mainhand loot rr_crusade:book_0

execute if score #replaced impulse_cooldown matches 0 if predicate rr_crusade:book_offhand_3 store success score #replaced impulse_cooldown run loot replace entity @s weapon.offhand loot rr_crusade:book_0

scoreboard players set @s impulse_cooldown 2