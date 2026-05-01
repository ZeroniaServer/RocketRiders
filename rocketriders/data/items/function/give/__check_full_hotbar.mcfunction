execute if score $inventory_count var matches 1.. if score $final_batch_size var matches 1.. run return fail

scoreboard players set $slots_filled var 0
execute if items entity @s hotbar.0 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s hotbar.1 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s hotbar.2 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s hotbar.3 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s hotbar.4 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s hotbar.5 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s hotbar.6 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s hotbar.7 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s hotbar.8 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.0 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.1 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.2 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.3 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.4 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.5 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.6 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.7 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.8 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.9 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.10 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.11 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.12 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.13 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.14 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.15 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.16 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.17 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.18 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.19 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.20 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.21 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.22 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.23 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.24 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.25 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s inventory.26 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s weapon.offhand *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s player.cursor *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s player.crafting.0 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s player.crafting.1 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s player.crafting.2 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
execute if items entity @s player.crafting.3 *[!custom_data~{ignore_hotbar_limit:true}] run scoreboard players add $slots_filled var 1
# should elytra take up a slot?
#execute if predicate items:effects/elytra/on run scoreboard players add $slots_filled var 1

execute unless score $slots_filled var matches 9.. run return fail

title @s actionbar {color:"red",text:"You have too many items, so you can't get any more."}
scoreboard players set $give_item var 0
