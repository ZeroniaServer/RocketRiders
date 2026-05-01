execute if entity @s[tag=!givenAllPowerup] run summon marker 0 0 0 {Tags:["rngPowerup","rng1"],CustomName:"rngPowerup (Powerups)"}
execute if entity @s[tag=!givenAllPowerup] run summon marker 0 0 0 {Tags:["rngPowerup","rng1"],CustomName:"rngPowerup (Powerups)"}
execute if entity @s[tag=!givenTipped] run summon marker 0 0 0 {Tags:["rngArrow","rng1"],CustomName:"rngArrow (Tipped Arrows)"}
tag @e[x=0,type=marker,tag=rng1,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_powerups:items/rng) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=rng1,tag=rngSelected]"}]}
tag @a[x=0,predicate=custom:team/any_playing_team] add getItem
tag @s add tetrisTime
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=rngPowerup] run function rr_powerups:items/powerup/rng
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=rngArrow] run function rr_powerups:items/arrow/rng
function rr_powerups:items/tetris
tag @a[x=0] remove getItem
tag @s remove tetrisTime
kill @e[x=0,type=marker,tag=rng1]
