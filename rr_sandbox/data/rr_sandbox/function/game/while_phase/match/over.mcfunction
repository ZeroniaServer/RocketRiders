function rr_powerups:everytick/spawnables
execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if entity @s[scores={endtimer=1}] run dialog clear @a[x=0]
scoreboard players reset @a[x=0] nomicon
