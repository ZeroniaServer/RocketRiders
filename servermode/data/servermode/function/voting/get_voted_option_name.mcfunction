execute if score @s VoteNum matches 1 run return run data modify storage rocketriders:main voting.voted_option_name set value "Normal Mode"
execute if score @s VoteNum matches 2 run return run data modify storage rocketriders:main voting.voted_option_name set value "Powerups Mode"
execute if score @s VoteNum matches 3 run return run data modify storage rocketriders:main voting.voted_option_name set value "Swap Mode"
execute if score @s VoteNum matches 4 run return run data modify storage rocketriders:main voting.voted_option_name set value "Capture The Flag"
execute if score @s VoteNum matches 5 run return run data modify storage rocketriders:main voting.voted_option_name set value "Crusade Mode"
execute if score @s VoteNum matches 6 run return run data modify storage rocketriders:main voting.voted_option_name set value "Chase Mode"

data modify storage rocketriders:main voting.voted_option_name set value "Unknown Mode"
