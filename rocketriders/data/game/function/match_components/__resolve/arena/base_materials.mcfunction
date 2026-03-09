## Not specified
execute unless data storage rocketriders:match components."arena/base_materials" run return run data modify storage rocketriders:match components."arena/base_materials" set value {blue:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"},yellow:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"}}

## Specified
scoreboard players set $matching var 0
execute unless data storage rocketriders:match components."arena/base_materials".blue unless data storage rocketriders:match components."arena/base_materials".yellow run scoreboard players set $matching var 1
# Teams match
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value set value {blue:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"}}
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.blue.front set from storage rocketriders:match components."arena/base_materials".front
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.blue.middle set from storage rocketriders:match components."arena/base_materials".middle
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.blue.back set from storage rocketriders:match components."arena/base_materials".back
execute if score $matching var matches 1 run data modify storage rocketriders:main match_components.value.yellow set from storage rocketriders:main match_components.value.blue
execute if score $matching var matches 1 run return run data modify storage rocketriders:match components."arena/base_materials" set from storage rocketriders:main match_components.value
# Teams do not match
data modify storage rocketriders:main match_components.value set value {blue:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"},yellow:{front:"stained_glass",middle:"stained_glass",back:"stained_glass"}}
data modify storage rocketriders:main match_components.value.blue.front set from storage rocketriders:match components."arena/base_materials".blue.front
data modify storage rocketriders:main match_components.value.blue.middle set from storage rocketriders:match components."arena/base_materials".blue.middle
data modify storage rocketriders:main match_components.value.blue.back set from storage rocketriders:match components."arena/base_materials".blue.back
data modify storage rocketriders:main match_components.value.yellow.front set from storage rocketriders:match components."arena/base_materials".yellow.front
data modify storage rocketriders:main match_components.value.yellow.middle set from storage rocketriders:match components."arena/base_materials".yellow.middle
data modify storage rocketriders:main match_components.value.yellow.back set from storage rocketriders:match components."arena/base_materials".yellow.back
return run data modify storage rocketriders:match components."arena/base_materials" set from storage rocketriders:main match_components.value
