advancement revoke @s only rr_crusade:use_book
advancement revoke @s only rr_crusade:book_cooldown

execute if score @s impulse_cooldown matches 1.. run return run scoreboard players set @s impulse_cooldown 2

execute at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 2

scoreboard players set @s impulse_cooldown 2

execute if items entity @s weapon.mainhand *[custom_data~{id:"spell_book",spell:"fire"}] run return run function rr_crusade:game/use_book/switch_to_health
execute if items entity @s weapon.mainhand *[custom_data~{id:"spell_book",spell:"health"}] run return run function rr_crusade:game/use_book/switch_to_damage
execute if items entity @s weapon.mainhand *[custom_data~{id:"spell_book",spell:"damage"}] run return run function rr_crusade:game/use_book/switch_to_wind
execute if items entity @s weapon.mainhand *[custom_data~{id:"spell_book",spell:"wind"}] run return run function rr_crusade:game/use_book/switch_to_fire
execute if items entity @s weapon.mainhand *[custom_data~{id:"spell_book"}] run return fail

execute if items entity @s weapon.offhand *[custom_data~{id:"spell_book",spell:"fire"}] run return run function rr_crusade:game/use_book/switch_to_health
execute if items entity @s weapon.offhand *[custom_data~{id:"spell_book",spell:"health"}] run return run function rr_crusade:game/use_book/switch_to_damage
execute if items entity @s weapon.offhand *[custom_data~{id:"spell_book",spell:"damage"}] run return run function rr_crusade:game/use_book/switch_to_wind
execute if items entity @s weapon.offhand *[custom_data~{id:"spell_book",spell:"wind"}] run return run function rr_crusade:game/use_book/switch_to_fire
execute if items entity @s weapon.offhand *[custom_data~{id:"spell_book"}] run return fail
