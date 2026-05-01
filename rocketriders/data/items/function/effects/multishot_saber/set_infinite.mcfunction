execute if predicate items:effects/multishot_saber/on run title @s actionbar [{"text":"Multishot Saber timer set to ","color":"light_purple"},{"text":"∞.","color":"red"}]
execute if predicate items:effects/multishot_saber/on run tag @s add DelayActionbar
execute if predicate items:effects/multishot_saber/on run scoreboard players set @s actionbardelay 0
execute unless predicate items:effects/multishot_saber/on run title @s title ""
execute unless predicate items:effects/multishot_saber/on run title @s subtitle ["",{"text":"Multishot Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts ","color":"light_purple","italic":true},{"text":"forever.","color":"red"}]

scoreboard players set @s effects.multishot_saber.time 2147483647
function custom:player/update_inventory/shooting_saber
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5
