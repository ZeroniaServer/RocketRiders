$execute if items entity @s $(slot) enchanted_book[custom_data~{spell:0}] at @s run function rr_crusade:spell/fire
$execute if items entity @s $(slot) enchanted_book[custom_data~{spell:1}] at @s run function rr_crusade:spell/health
$execute if items entity @s $(slot) enchanted_book[custom_data~{spell:2}] at @s run function rr_crusade:spell/damage
$execute if items entity @s $(slot) enchanted_book[custom_data~{spell:3}] at @s run function rr_crusade:spell/wind
$item replace entity @s[gamemode=!creative] $(slot) with air

execute at @s run playsound minecraft:entity.shulker.shoot master @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.5

