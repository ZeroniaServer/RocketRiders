##Ballet Dancer achievement
#Jump Detection
execute as @s[tag=!FailedBallet] run scoreboard players add @s timeSinceJump 1
execute as @s[tag=!FailedBallet,scores={jumping=1..}] run scoreboard players reset @s timeSinceJump
execute as @s[tag=!FailedBallet,scores={jumping=1..}] run scoreboard players reset @s jumping
execute as @s[scores={timeSinceJump=40..}] run tag @s add FailedBallet
execute as @s[tag=FailedBallet] run scoreboard players reset @s timeSinceJump

#Sprint Detection
execute as @s[tag=!FailedBallet] run scoreboard players add @s movement 1
execute as @s[tag=!FailedBallet,predicate=custom:is_sprinting] run scoreboard players reset @s movement
execute as @s[scores={movement=20..}] run tag @s add FailedBallet
execute as @s[tag=FailedBallet] run scoreboard players reset @s movement