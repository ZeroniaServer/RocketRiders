execute store result score $existing_slots_remainder var run clear @s *[custom_data~{id:"tipped_arrow_levitation"},!count=64] 0
execute if score $existing_slots_remainder var matches 0 run return fail
scoreboard players operation $existing_slots_remainder var %= $64 constant
scoreboard players operation $existing_slots_remainder var *= $-1 constant
scoreboard players add $existing_slots_remainder var 64
scoreboard players operation $existing_slots_remainder var < $count var
loot give @s loot {pools:[{rolls:1,entries:[{type:"minecraft:loot_table",value:"items:item/tipped_arrow_levitation"}],functions:[{function:"minecraft:set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$existing_slots_remainder"},score:"var"}}]}]}
scoreboard players operation $count var -= $existing_slots_remainder var
execute if score $count var matches 1.. run function items:give_count/__rec_slot_fill/tipped_arrow_levitation
