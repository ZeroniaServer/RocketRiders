#After game ends
scoreboard players add @s fakeendtimer 1
execute if entity @s[scores={fakeendtimer=1}] as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/reset_inventory
tag @s[scores={fakeendtimer=1}] remove gaveFirstItem
execute store result score @s[scores={fakeendtimer=1}] MaxItemTime run function game:config/get_item_delay_ticks
scoreboard players set @s RandomItem -3
execute if entity @s[scores={fakeendtimer=1}] run function game:endstats
execute if entity @s[scores={fakeendtimer=1}] run gamemode spectator @a[x=0,predicate=custom:team/blue]
execute if entity @s[scores={fakeendtimer=1}] run gamemode spectator @a[x=0,predicate=custom:team/yellow]
execute if entity @s[scores={fakeendtimer=1..2}] run tag @a[x=0,predicate=custom:team/any_playing_team] remove force_mount
execute if entity @s[scores={fakeendtimer=1..2}] run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if entity @s[scores={fakeendtimer=1..2}] run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
execute if entity @s[scores={fakeendtimer=1}] as @a[x=0] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine
execute if entity @s[scores={fakeendtimer=1}] run effect clear @a[x=0] blindness
execute if entity @s[scores={fakeendtimer=1}] run effect clear @a[x=0] glowing
execute if entity @s[scores={fakeendtimer=1}] run effect clear @a[x=0] speed
execute if entity @s[scores={fakeendtimer=1}] as @a[x=0] run function everytick:score_reset
execute if entity @s[scores={fakeendtimer=240}] run scoreboard players reset @a[x=0] match_statistic.kills
execute if entity @s[scores={fakeendtimer=240}] run scoreboard players reset @a[x=0] match_statistic.deaths
execute if entity @s[scores={fakeendtimer=240}] run tag @a[x=0] remove Winner
execute if entity @s[scores={fakeendtimer=240}] run tag @a[x=0] remove Loser
execute if entity @s[scores={fakeendtimer=240}] run tag @s remove BlueWon
execute if entity @s[scores={fakeendtimer=240}] run tag @s remove YellowWon
execute if entity @s[scores={fakeendtimer=240}] run tag @a[x=0] remove beenOnBlue
execute if entity @s[scores={fakeendtimer=240}] run tag @a[x=0] remove beenOnYellow
execute if entity @s[scores={fakeendtimer=240}] run tag @a[x=0] remove beenOnBoth
execute if entity @s[scores={fakeendtimer=240}] run function rr_duel:arenaclear/areaclear
