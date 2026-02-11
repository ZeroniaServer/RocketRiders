# arguments: id

$attribute @s $(id) base reset
execute if data storage rocketriders:main reset_attributes.attributes[-1].modifiers[0] run data modify storage rocketriders:main reset_attributes.attributes[-1].modifiers[].attribute set from storage rocketriders:main reset_attributes.attributes[-1].id
execute if data storage rocketriders:main reset_attributes.attributes[-1].modifiers[0] run function custom:event/player_joins_overworld/reset_attributes/modifiers_loop with storage rocketriders:main reset_attributes.attributes[-1].modifiers[-1]
data remove storage rocketriders:main reset_attributes.attributes[-1]

execute if data storage rocketriders:main reset_attributes.attributes[0] run function custom:event/player_joins_overworld/reset_attributes/bases_loop with storage rocketriders:main reset_attributes.attributes[-1]
