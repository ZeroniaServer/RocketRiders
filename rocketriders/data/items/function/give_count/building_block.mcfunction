# arguments: count

$scoreboard players set $count var $(count)
execute if score $count var matches ..0 run return fail

execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
loot give @s loot {pools:[{rolls:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$count"},score:"var"},entries:[{type:"minecraft:loot_table",value:"items:item/building_block"}]}]}
