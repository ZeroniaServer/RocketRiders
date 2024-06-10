##Ballet Dancer achievement
#Jump Detection
scoreboard players add @s[tag=!FailedBallet] timeSinceJump 1
scoreboard players reset @s[tag=!FailedBallet,scores={jumping=1..}] timeSinceJump
scoreboard players reset @s[tag=!FailedBallet,scores={jumping=1..}] jumping
tag @s[scores={timeSinceJump=40..}] add FailedBallet
scoreboard players reset @s[tag=FailedBallet] timeSinceJump

#Sprint Detection
scoreboard players add @s[tag=!FailedBallet] movement 1
scoreboard players reset @s[tag=!FailedBallet,predicate=custom:is_sprinting] movement
tag @s[scores={movement=20..}] add FailedBallet
scoreboard players reset @s[tag=FailedBallet] movement