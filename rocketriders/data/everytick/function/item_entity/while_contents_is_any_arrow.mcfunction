scoreboard players set $is_near_someone var 0
execute positioned ~-1.25 ~-0.499999 ~-1.25 as @e[type=player,dx=1.5,dy=0.249998,dz=1.5,predicate=custom:can_pick_up_arrows,predicate=custom:team/any_playing_team] store success score $is_near_someone var run tag @s add item_entity.target_candidate

execute if score $is_near_someone var matches 0 run data modify entity @s[tag=item_entity.was_near_someone] Owner set value [I;0,0,0,0]
execute if score $is_near_someone var matches 1 run tag @p[distance=0..,tag=item_entity.target_candidate] add item_entitem_entityity_pickup.target
execute if score $is_near_someone var matches 1 run tag @a[x=0] remove item_entity.target_candidate
execute if score $is_near_someone var matches 1 run data modify entity @s[tag=!item_entity.was_near_someone] Owner set from entity @a[limit=1,x=0,tag=item_entity.target] UUID
execute if score $is_near_someone var matches 1 run tag @a[x=0] remove item_entity.target

execute if score $is_near_someone var matches 0 run tag @s remove item_entity.was_near_someone
execute if score $is_near_someone var matches 1 run tag @s add item_entity.was_near_someone
