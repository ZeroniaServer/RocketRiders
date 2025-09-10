# arguments: count

$scoreboard players set $count var $(count)
execute if score $count var matches ..0 run return fail

execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2

# Fill up existing arrow slots first
function items:fill_existing_slots/tipped_arrow_wither
execute if score $count var matches 0 run return 1

# Then attempt to fill up the offhand
scoreboard players set $offhand var 0
execute unless predicate custom:invisible unless items entity @s weapon.offhand * run scoreboard players set $offhand var 1
execute if score $offhand var matches 1 if score $count var matches ..64 run return run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"items:misc/tipped_arrow_wither"}],functions:[{function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$count"},score:"var"}}]}]}

execute if score $offhand var matches 1 run loot replace entity @s weapon.offhand loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"items:misc/tipped_arrow_wither"}],functions:[{function:"minecraft:set_count",count:64}]}]}
execute if score $offhand var matches 1 run scoreboard players remove $count var 64

# Then dump any remaining items
loot give @s loot {pools:[{rolls:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$count"},score:"var"},entries:[{type:"minecraft:loot_table",value:"items:misc/tipped_arrow_wither"}]}]}
