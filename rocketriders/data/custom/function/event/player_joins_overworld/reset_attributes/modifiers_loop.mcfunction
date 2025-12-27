# arguments: attribute, id

$attribute @s $(attribute) modifier remove $(id)
data remove storage rocketriders:main reset_attributes.attributes[-1].modifiers[-1]

execute if data storage rocketriders:main reset_attributes.attributes[-1].modifiers[0] run function custom:event/player_joins_overworld/reset_attributes/modifiers_loop with storage rocketriders:main reset_attributes.attributes[-1].modifiers[-1]
