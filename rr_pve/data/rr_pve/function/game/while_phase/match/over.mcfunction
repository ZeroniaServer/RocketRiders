execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if entity @s[scores={endtimer=1}] run function game:endstats
kill @e[x=0,type=armor_stand,tag=Bot]