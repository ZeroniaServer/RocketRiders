execute if score $subtick_hackery_done global matches 0 run function everytick:subtick_hackery/new_player_uuid
execute unless data storage rocketriders:subtick_hackery player run function everytick:subtick_hackery/new_player_uuid
execute unless entity @a[limit=1,x=0,tag=subtick_hackery.player] run function everytick:subtick_hackery/new_player_uuid

data modify storage rocketriders:main subtick_hackery.entity_data set value {Tags:["subtick_hackery.mob"],data:{subtick_hackery:{}},ConversionTime:0}
data modify storage rocketriders:main subtick_hackery.entity_data.ConversionPlayer set from storage rocketriders:subtick_hackery player
function everytick:subtick_hackery/summon with storage rocketriders:main subtick_hackery
scoreboard players set $subtick_hackery_done global 0
