data modify storage rocketriders:main bee.entity_data set value {anger_end_time:9223372036854775807L}

execute at @s[tag=BlueBee] run data modify storage rocketriders:main bee.entity_data.angry_at set from entity @e[limit=1,sort=nearest,type=player,gamemode=survival,predicate=custom:team/yellow,predicate=custom:in_arena] UUID
execute at @s[tag=YellowBee] run data modify storage rocketriders:main bee.entity_data.angry_at set from entity @e[limit=1,sort=nearest,type=player,gamemode=survival,predicate=custom:team/blue,predicate=custom:in_arena] UUID

execute if data storage rocketriders:main bee.entity_data.angry_at run return run data modify entity @s {} merge from storage rocketriders:main bee.entity_data
data remove entity @s angry_at
data remove entity @s anger_end_time
