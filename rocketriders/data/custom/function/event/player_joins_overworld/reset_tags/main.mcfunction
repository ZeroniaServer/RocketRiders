clear @s *[custom_data~{remove_all_entity_tags:true}]
advancement revoke @s only custom:player_join/remove_all_entity_tags

data modify storage rocketriders:main reset_tags set value {tags:[]}
data modify storage rocketriders:main reset_tags.tags set from entity @s Tags
data modify storage rocketriders:main reset_tags.tag set from storage rocketriders:main reset_tags.tags[-1]
execute if data storage rocketriders:main reset_tags.tags[0] run function custom:event/player_joins_overworld/reset_tags/loop with storage rocketriders:main reset_tags
