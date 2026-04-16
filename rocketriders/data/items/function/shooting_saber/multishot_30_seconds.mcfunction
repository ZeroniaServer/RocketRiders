execute if predicate items:shooting_saber/multishot run title @s actionbar [{"text":"Multishot Saber timer reset to ","color":"light_purple"},{"text":"30 seconds.","color":"red"}]
execute if predicate items:shooting_saber/multishot run tag @s add DelayActionbar
execute if predicate items:shooting_saber/multishot run scoreboard players set @s actionbardelay 0
execute unless predicate items:shooting_saber/multishot run title @s title ""
execute unless predicate items:shooting_saber/multishot run title @s subtitle ["",{"text":"Multishot Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts for ","color":"light_purple","italic":true},{"text":"30 seconds.","color":"red"}]

scoreboard players set @s shooting_saber.multishot_time 600
function custom:player/update_inventory/shooting_saber
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5
