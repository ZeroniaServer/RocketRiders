#Items
execute as @a[tag=JoinBlue] run function game:givegear
function game:saberblue

execute as @a[tag=JoinYellow] run function game:givegear
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Countdown
##Create Nexuses
execute as @s[scores={count=1}] run fill -10 58 -74 34 37 -74 air
execute as @s[scores={count=1}] run fill 34 58 74 -10 37 74 air
execute as @s[scores={count=1}] at @e[tag=YellowNexusA] run clone 67 219 37 69 229 39 ~-1 ~-5 ~-1
execute as @s[scores={count=1}] at @e[tag=YellowNexusB] run clone 67 219 37 69 229 39 ~-1 ~-5 ~-1
execute as @s[scores={count=1}] at @e[tag=YellowNexusC] run clone 40 216 31 46 226 37 ~-3 ~-5 ~-3
execute as @s[scores={count=1}] at @e[tag=BlueNexusA] run clone 63 219 37 61 229 39 ~-1 ~-5 ~-1
execute as @s[scores={count=1}] at @e[tag=BlueNexusB] run clone 63 219 37 61 229 39 ~-1 ~-5 ~-1
execute as @s[scores={count=1}] at @e[tag=BlueNexusC] run clone 49 216 32 55 226 38 ~-3 ~-5 ~-3
execute as @s[scores={count=1}] at @e[tag=BlueNexusA] run summon end_crystal ~ ~ ~
execute as @s[scores={count=1}] at @e[tag=BlueNexusB] run summon end_crystal ~ ~ ~
execute as @s[scores={count=1}] at @e[tag=BlueNexusC] run summon end_crystal ~ ~ ~
execute as @s[scores={count=1}] at @e[tag=YellowNexusC] run summon end_crystal ~ ~ ~
execute as @s[scores={count=1}] at @e[tag=YellowNexusC] run summon end_crystal ~ ~ ~
execute as @s[scores={count=1}] at @e[tag=YellowNexusC] run summon end_crystal ~ ~ ~
execute as @s[scores={count=1}] run scoreboard players set @e[tag=YellowNexusA] nexushealth 15
execute as @s[scores={count=1}] run scoreboard players set @e[tag=YellowNexusB] nexushealth 15
execute as @s[scores={count=1}] run scoreboard players set @e[tag=YellowNexusC] nexushealth 20
execute as @s[scores={count=1}] run scoreboard players set @e[tag=BlueNexusA] nexushealth 15
execute as @s[scores={count=1}] run scoreboard players set @e[tag=BlueNexusB] nexushealth 15
execute as @s[scores={count=1}] run scoreboard players set @e[tag=BlueNexusC] nexushealth 20

#Start Game
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted