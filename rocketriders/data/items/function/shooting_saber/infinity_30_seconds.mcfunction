execute if predicate items:shooting_saber/infinity run title @s actionbar [{"text":"Infinity Saber timer reset to ","color":"light_purple"},{"text":"30 seconds.","color":"red"}]
execute if predicate items:shooting_saber/infinity run tag @s add DelayActionbar
execute if predicate items:shooting_saber/infinity run scoreboard players set @s actionbardelay 0
execute unless predicate items:shooting_saber/infinity run title @s title ""
execute unless predicate items:shooting_saber/infinity run title @s subtitle ["",{"text":"Infinity Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts for ","color":"light_purple","italic":true},{"text":"30 seconds.","color":"red"}]

scoreboard players set @s shooting_saber.infinity_time 600
function custom:update_inventory/shooting_saber
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5

execute unless predicate custom:has_arrow_in_inventory run function rr_powerups:items/deduct_one_arrow_item_entity
execute unless predicate custom:has_arrow_in_inventory run loot give @s loot items:misc/arrow
