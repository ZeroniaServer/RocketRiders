data modify storage rocketriders:main save_play_time set value {id:"crusade"}
data modify storage rocketriders:main save_play_time.UUID set from entity @s UUID
execute if score @s player_statistics.crusade_play_time matches 20.. run function custom:__impl__/playerdata/save_play_time/template with storage rocketriders:main save_play_time
