execute store success score $is_near_someone var if entity @a[limit=1,distance=..2,predicate=custom:can_pick_up_arrows,predicate=custom:team/any_playing_team]

execute if score $is_near_someone var matches 0 run data modify entity @s[tag=item_entity.was_near_someone] Owner set value [I;0,0,0,0]
execute if score $is_near_someone var matches 1 run data modify entity @s[tag=!item_entity.was_near_someone] Owner set from entity @p[distance=..2,predicate=custom:can_pick_up_arrows,predicate=custom:team/any_playing_team] UUID

execute if score $is_near_someone var matches 0 run tag @s remove item_entity.was_near_someone
execute if score $is_near_someone var matches 1 run tag @s add item_entity.was_near_someone
