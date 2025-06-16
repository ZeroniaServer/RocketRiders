execute if score @s entity.age matches 0 if predicate entities:origin_team/yellow run place template yellowshield1 ~-1 ~-1 ~
execute if score @s entity.age matches 0 if predicate entities:origin_team/blue run place template blueshield1 ~-1 ~-1 ~
execute if score @s entity.age matches 0 if predicate entities:origin_team/none run place template rr_chase:whiteshield1 ~-1 ~-1 ~
execute if score @s entity.age matches 0 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute if score @s entity.age matches 0 run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 1 if predicate entities:origin_team/yellow run place template yellowshield2 ~-2 ~-2 ~
execute if score @s entity.age matches 1 if predicate entities:origin_team/blue run place template blueshield2 ~-2 ~-2 ~
execute if score @s entity.age matches 1 if predicate entities:origin_team/none run place template rr_chase:whiteshield2 ~-2 ~-2 ~
execute if score @s entity.age matches 1 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute if score @s entity.age matches 1 run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow run place template yellowshield3 ~-3 ~-3 ~
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue run place template blueshield3 ~-3 ~-3 ~
execute if score @s entity.age matches 2 if predicate entities:origin_team/none run place template rr_chase:whiteshield3 ~-3 ~-3 ~
execute if score @s entity.age matches 2 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 2 run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 2 if predicate entities:origin_team/yellow run particle minecraft:block{block_state:"minecraft:yellow_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/blue run particle minecraft:block{block_state:"minecraft:blue_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
execute if score @s entity.age matches 2 if predicate entities:origin_team/none run particle minecraft:block{block_state:"minecraft:white_stained_glass"} ~ ~ ~ 1 1 0 0.1 50
