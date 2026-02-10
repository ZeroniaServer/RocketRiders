execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor
execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute if entity @s[scores={endtimer=1}] run effect give @a[x=0,predicate=custom:team/blue,tag=Loser] weakness infinite 100 true
execute if entity @s[scores={endtimer=1}] run function rr_chase:game/endstats
scoreboard players reset * FlagScore
execute if entity @s[scores={endtimer=1..}] run kill @e[x=0,type=marker,tag=airDetect,limit=1]
execute if entity @s[scores={endtimer=1..}] run fill 13 74 68 7 64 61 moving_piston replace #custom:air
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"red"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead value 0
execute if entity @s[scores={endtimer=1..10}] run function rr_chase:chaseblocks/killall
tag @a[x=0,predicate=custom:team/blue] remove InLead
effect clear @a[x=0] glowing
execute if entity @s[scores={endtimer=1..2}] run tag @a[x=0,predicate=custom:team/any_playing_team] remove force_mount
execute if entity @s[scores={endtimer=1..2}] run tp @a[x=0,predicate=custom:team/blue,tag=Loser] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2}] run tp @a[x=0,predicate=custom:team/blue,tag=Winner,limit=1] 12 64 64 180 0
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay list
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset * flag_tablist_display
