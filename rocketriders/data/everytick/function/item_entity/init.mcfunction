tag @s add item_entity.processed

execute if predicate game:match_components/arrow_pickup/only_crusade_mode_archer_kit if predicate custom:item_entity_contains_any_arrow run data modify entity @s Owner set value [I;0,0,0,0]

execute if predicate rr:drop_main_item_to_leave_match if predicate game:phase/match if items entity @s contents *[custom_data~{main_item:true}] on origin if predicate custom:team/any_playing_team run function everytick:item_entity/leave_mid_match_message

execute unless items entity @s contents *[custom_data~{dummy_item_entity:true}] run function everytick:item_entity/no_drop
