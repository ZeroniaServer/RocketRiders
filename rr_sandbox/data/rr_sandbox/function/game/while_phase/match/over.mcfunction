function rr_powerups:everytick/spawnables
execute if score @s endtimer matches 1 as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if score @s endtimer matches 1 run dialog clear @a[x=0]
scoreboard players reset @a[x=0] nomicon
