data modify storage rocketriders:main reset_attributes set value {attributes:[]}
data modify storage rocketriders:main reset_attributes.attributes set from entity @s attributes
execute if data storage rocketriders:main reset_attributes.attributes[0] run function custom:event/player_joins_overworld/reset_attributes/bases_loop with storage rocketriders:main reset_attributes.attributes[-1]
