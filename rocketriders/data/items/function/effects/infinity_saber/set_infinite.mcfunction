execute if predicate items:effects/infinity_saber/on run title @s actionbar [{"text":"Infinity Saber timer reset to ","color":"light_purple"},{"text":"∞.","color":"red"}]
execute if predicate items:effects/infinity_saber/on run tag @s add DelayActionbar
execute if predicate items:effects/infinity_saber/on run scoreboard players set @s actionbardelay 0
execute unless predicate items:effects/infinity_saber/on run title @s title ""
execute unless predicate items:effects/infinity_saber/on run title @s subtitle ["",{"text":"Infinity Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts ","color":"light_purple","italic":true},{"text":"forever.","color":"red"}]

scoreboard players set @s effects.infinity_saber.time 2147483647
function custom:player/update_inventory/shooting_saber
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5

execute unless predicate custom:player/has_arrow_in_inventory run function rr_powerups:items/deduct_one_arrow_item_entity
execute unless predicate custom:player/has_arrow_in_inventory run function items:give_count/arrow {count:1}
