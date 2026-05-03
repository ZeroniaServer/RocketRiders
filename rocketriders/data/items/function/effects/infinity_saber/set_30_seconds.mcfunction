execute if predicate items:effects/infinity_saber/on run title @s actionbar [{color:"light_purple",text:"Infinity Saber timer reset to "},{color:"red",text:"30 seconds"}]
execute if predicate items:effects/infinity_saber/on run function custom:player/delay_actionbar
execute unless predicate items:effects/infinity_saber/on run title @s title ""
execute unless predicate items:effects/infinity_saber/on run title @s subtitle ["",{"text":"Infinity Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts for ","color":"light_purple","italic":true},{"text":"30 seconds.","color":"red"}]

scoreboard players set @s effects.infinity_saber.time 600
function custom:player/update_inventory/shooting_saber
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5

execute unless predicate custom:player/has_arrow_in_inventory run function rr_powerups:items/deduct_one_arrow_item_entity
execute unless predicate custom:player/has_arrow_in_inventory run function items:give_count/arrow {count:1}
