# execute if score @s entity.age matches 0 if predicate entities:origin_team/yellow run place template yellowshield1 ~-1 ~-1 ~
execute if score @s entity.age matches 0 if predicate entities:origin_team/blue run function entities:shield/tick/spawn_blue
# execute if score @s entity.age matches 0 if predicate entities:origin_team/none run place template rr_chase:whiteshield1 ~-1 ~-1 ~
execute if score @s entity.age matches 0 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0.6
execute if score @s entity.age matches 0 run playsound item.shield.break master @a[x=0] ~ ~ ~ 2 2

execute if score @s entity.age matches 5 if predicate entities:origin_team/yellow run place template yellowshield3 ~-3 ~-3 ~
execute if score @s entity.age matches 5 if predicate entities:origin_team/blue run place template blueshield3 ~-3 ~-3 ~
execute if score @s entity.age matches 5 if predicate entities:origin_team/none run place template rr_chase:whiteshield3 ~-3 ~-3 ~
execute if score @s entity.age matches 5 run playsound block.glass.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 5 run playsound item.shield.block master @a[x=0] ~ ~ ~ 2 0