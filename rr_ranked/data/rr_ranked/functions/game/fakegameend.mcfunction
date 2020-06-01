#After game ends
tag @s remove gaveFirstItem
scoreboard players add @s fakeendtimer 1
clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
scoreboard players set @s RandomItem -3
execute as @s[scores={fakeendtimer=1}] run tag @a remove SummonPlat
execute as @s[scores={fakeendtimer=1}] run gamemode spectator @a[team=Blue]
execute as @s[scores={fakeendtimer=1}] run gamemode spectator @a[team=Yellow]
execute as @s[scores={fakeendtimer=1..2}] run tp @a[team=Blue] 12 64 -66 0 0
execute as @s[scores={fakeendtimer=1..2}] run tp @a[team=Yellow] 12 64 66 180 0
execute as @s[scores={fakeendtimer=1}] run effect clear @a haste
execute as @s[scores={fakeendtimer=1}] run effect clear @a blindness
execute as @s[scores={fakeendtimer=1}] run effect clear @a glowing
execute as @s[scores={fakeendtimer=1}] run effect clear @a speed
execute as @s[scores={fakeendtimer=1}] run gamerule fallDamage false
execute as @s[scores={fakeendtimer=1}] run gamerule drowningDamage false
execute as @s[scores={fakeendtimer=1}] run gamerule fireDamage false
execute as @s[scores={fakeendtimer=1}] as @a run function everytick:score_reset
execute as @s[scores={fakeendtimer=320}] run scoreboard players set @a kills 0
execute as @s[scores={fakeendtimer=320}] run scoreboard players set @a deaths 0
execute as @s[scores={fakeendtimer=320}] run function rr_ranked:arenaclear/areaclear
tag @s[scores={fakeendtimer=320..}] remove FakeGameEnd
scoreboard players set @s[scores={fakeendtimer=320..}] fakeendtimer 0

