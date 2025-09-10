tag @s add item_entity.processed

execute if predicate game:gamemode_components/arrow_pickup/only_crusade_mode_archer_kit if predicate custom:item_entity_contains_any_arrow run data modify entity @s Owner set value [I;0,0,0,0]
