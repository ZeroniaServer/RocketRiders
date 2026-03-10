## Not specified
execute unless data storage rocketriders:match components."arena/base_colors" run return run data modify storage rocketriders:match components."arena/base_colors" set value {blue:{front:"main",middle:"accent",back:"white",detail:"black"},yellow:{front:"main",middle:"accent",back:"white",detail:"black"}}

## Specified
scoreboard players set $matching var 0
execute unless data storage rocketriders:match components."arena/base_colors".blue unless data storage rocketriders:match components."arena/base_colors".yellow run scoreboard players set $matching var 1
# Teams match
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value set value {blue:{front:"main",middle:"accent",back:"white",detail:"black"}}
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.blue.front set from storage rocketriders:match components."arena/base_colors".front
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.blue.middle set from storage rocketriders:match components."arena/base_colors".middle
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.blue.back set from storage rocketriders:match components."arena/base_colors".back
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.blue.detail set from storage rocketriders:match components."arena/base_colors".detail
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.yellow set from storage rocketriders:main match_components.value.blue
execute if score $matching var matches 1 run return run data modify storage rocketriders:match components."arena/base_colors" set from storage rocketriders:main match_components.value
# Teams do not match
data modify storage rocketriders:main match_components.value set value {blue:{front:"main",middle:"accent",back:"white"},yellow:{front:"main",middle:"accent",back:"white"}}
data modify storage rocketriders:main match_components.value.blue.front set from storage rocketriders:match components."arena/base_colors".blue.front
data modify storage rocketriders:main match_components.value.blue.middle set from storage rocketriders:match components."arena/base_colors".blue.middle
data modify storage rocketriders:main match_components.value.blue.back set from storage rocketriders:match components."arena/base_colors".blue.back
data modify storage rocketriders:main match_components.value.blue.detail set from storage rocketriders:match components."arena/base_colors".blue.detail
data modify storage rocketriders:main match_components.value.yellow.front set from storage rocketriders:match components."arena/base_colors".yellow.front
data modify storage rocketriders:main match_components.value.yellow.middle set from storage rocketriders:match components."arena/base_colors".yellow.middle
data modify storage rocketriders:main match_components.value.yellow.back set from storage rocketriders:match components."arena/base_colors".yellow.back
data modify storage rocketriders:main match_components.value.yellow.detail set from storage rocketriders:match components."arena/base_colors".yellow.detail
return run data modify storage rocketriders:match components."arena/base_colors" set from storage rocketriders:main match_components.value
