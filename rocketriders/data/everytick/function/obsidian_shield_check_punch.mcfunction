scoreboard players set $has_origin var 0
execute on origin run scoreboard players set $has_origin var 1
execute if score $has_origin var matches 0 run return 0

data remove entity @s Owner

# Add 0.5 seconds extra time when it is punched
execute if score @s obshieldtime matches ..15 run return 0
scoreboard players remove @s obshieldtime 10
execute unless score @s obshieldtime matches 15.. run scoreboard players set @s obshieldtime 15
