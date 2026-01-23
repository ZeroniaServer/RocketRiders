##Generates list of game rules as JSON text components
data modify storage rocketriders:gamerules list set value []
execute unless predicate game:game_rules/disable_pierce_prevention/on run data modify storage rocketriders:gamerules list append value [{"text":"Pierce Prevention: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute if predicate game:game_rules/disable_pierce_prevention/on run data modify storage rocketriders:gamerules list append value [{"text":"Pierce Prevention: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]
execute if predicate game:game_rules/snipe_portals/on run data modify storage rocketriders:gamerules list append value [{"text":"Snipe Portals: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute unless predicate game:game_rules/snipe_portals/on run data modify storage rocketriders:gamerules list append value [{"text":"Snipe Portals: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]
execute unless predicate game:game_rules/disable_tying/on run data modify storage rocketriders:gamerules list append value [{"text":"Tiebreakers: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute if predicate game:game_rules/disable_tying/on run data modify storage rocketriders:gamerules list append value [{"text":"Tiebreakers: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]
execute if predicate game:game_rules/disable_cannoning/on run data modify storage rocketriders:gamerules list append value [{"text":"TNT Cannoning: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]
execute unless predicate game:game_rules/disable_cannoning/on run data modify storage rocketriders:gamerules list append value [{"text":"TNT Cannoning: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute if predicate game:game_rules/impact_utilities/on run data modify storage rocketriders:gamerules list append value [{"text":"Impact Utilities: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute unless predicate game:game_rules/impact_utilities/on run data modify storage rocketriders:gamerules list append value [{"text":"Impact Utilities: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]
execute unless predicate game:game_rules/disable_hotbar_limit/on run data modify storage rocketriders:gamerules list append value [{"text":"Hotbar Limit: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute if predicate game:game_rules/disable_hotbar_limit/on run data modify storage rocketriders:gamerules list append value [{"text":"Hotbar Limit: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]
execute if predicate game:game_rules/item_stacking/on run data modify storage rocketriders:gamerules list append value [{"text":"Item Stacking: ","color":"white"},{"text":"Enabled","color":"green","bold":true}]
execute unless predicate game:game_rules/item_stacking/on run data modify storage rocketriders:gamerules list append value [{"text":"Item Stacking: ","color":"white"},{"text":"Disabled","color":"red","bold":true}]

data modify storage rocketriders:gamerules list append value [{color:"white",text:"Item Delay: "},{bold:true,color:"yellow",text:""},{bold:false,color:"yellow",text:" seconds"}]
execute store result storage rocketriders:gamerules list[-1][1].text int 1 run function game:config/get_item_delay
data modify storage rocketriders:gamerules list[-1][1].text set string storage rocketriders:gamerules list[-1][1].text
