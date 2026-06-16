scoreboard players set $arrow_pickup_rule.enum match_components 0
execute if data storage rocketriders:match components{arrow_pickup_rule:"crusade_kit_dependent"} run scoreboard players set $arrow_pickup_rule.enum match_components 1

execute if score $arrow_pickup_rule.enum match_components matches 0 run data modify storage rocketriders:match components.arrow_pickup_rule set value "anyone"
execute if score $arrow_pickup_rule.enum match_components matches 0 run scoreboard players reset $arrow_pickup_rule.enum match_components
