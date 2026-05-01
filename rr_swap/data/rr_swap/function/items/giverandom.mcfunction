tag @a[x=0,predicate=custom:team/any_playing_team] add getItem
tag @s add tetrisTime
function rr_swap:items/tetris
function rr_swap:items/rng
function rr_swap:items/tetris
tag @a[x=0] remove getItem
tag @s remove tetrisTime
execute if entity @s[tag=givenAllHeavy,tag=givenAllDUtil] run function rr_swap:items/tetrisreset
execute if entity @s[tag=givenAllLightning,tag=givenAllLUtil] run function rr_swap:items/tetrisreset
execute if entity @s[tag=givenAllLightning,tag=givenAllDUtil] run function rr_swap:items/tetrisreset
execute if entity @s[tag=givenAllHeavy,tag=givenAllLUtil] run function rr_swap:items/tetrisreset
tag @s add gaveFirstItem

#wind down
execute if predicate game:modifiers/wind_down/on run scoreboard players remove @s[scores={MaxItemTime=62..}] MaxItemTime 2
