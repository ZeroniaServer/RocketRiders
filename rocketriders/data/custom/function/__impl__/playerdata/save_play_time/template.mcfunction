# arguments: UUID

# If no entry exists, just save all
$execute unless data storage rocketriders.data:playerdata players."$(UUID)" run return run function custom:__impl__/playerdata/save/do_save {UUID:$(UUID)}

# Store as the smallest data type
$scoreboard players operation #t var = @s player_statistics.$(id)_play_time
execute if score #t var matches 20..2559 store result storage rocketriders:main save_play_time.value byte 0.05 run scoreboard players get #t var
execute if score #t var matches 2560..655359 store result storage rocketriders:main save_play_time.value short 0.05 run scoreboard players get #t var
execute if score #t var matches 655360.. store result storage rocketriders:main save_play_time.value int 0.05 run scoreboard players get #t var

$data modify storage rocketriders.data:playerdata players."$(UUID)".data.play_time.$(id) set from storage rocketriders:main save_play_time.value

# success
return 1
