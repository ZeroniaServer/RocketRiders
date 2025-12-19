$execute if items entity @s $(slot) enchanted_book[custom_data~{spell:"fire"}] at @s run function rr_crusade:spell/fire
$execute if items entity @s $(slot) enchanted_book[custom_data~{spell:"health"}] at @s run function rr_crusade:spell/health
$execute if items entity @s $(slot) enchanted_book[custom_data~{spell:"damage"}] at @s run function rr_crusade:spell/damage
$execute if items entity @s $(slot) enchanted_book[custom_data~{spell:"wind"}] at @s run function rr_crusade:spell/wind
$item replace entity @s[gamemode=!creative] $(slot) with air

execute at @s run playsound minecraft:entity.shulker.shoot master @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.5

