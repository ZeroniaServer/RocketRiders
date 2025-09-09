execute if predicate items:shooting_saber/infinity run title @s actionbar [{"text":"Infinity Saber timer reset to ","color":"light_purple"},{"text":"∞.","color":"red"}]
execute if predicate items:shooting_saber/infinity run tag @s add DelayActionbar
execute if predicate items:shooting_saber/infinity run scoreboard players set @s actionbardelay 0
execute unless predicate items:shooting_saber/infinity run title @s title ""
execute unless predicate items:shooting_saber/infinity run title @s subtitle ["",{"text":"Infinity Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts ","color":"light_purple","italic":true},{"text":"forever.","color":"red"}]

scoreboard players set @s shooting_saber.infinity_time 2147483647
function custom:update_inventory/shooting_saber
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5

execute unless predicate custom:has_arrow_in_inventory run function rr_powerups:items/deduct_one_arrow_item_entity
execute unless predicate custom:has_arrow_in_inventory unless predicate custom:invisible unless items entity @s weapon.offhand * run return run loot replace entity @s weapon.offhand loot items:misc/arrow
execute unless predicate custom:has_arrow_in_inventory run loot give @s loot items:misc/arrow
