##ballet dancer
#jump detection
execute as @a[tag=!FailedBallet] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players add @s timeSinceJump 1
execute as @a[tag=!FailedBallet,scores={jumping=1..}] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players reset @s timeSinceJump
execute as @a[tag=!FailedBallet,scores={jumping=1..}] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players reset @s jumping
execute as @a[scores={timeSinceJump=40..}] unless entity @s[team=!Blue,team=!Yellow] run tag @s add FailedBallet
execute as @a[tag=FailedBallet] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players reset @s timeSinceJump

#sprint detection
execute as @a[tag=!FailedBallet] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players add @s movement 1
execute as @a[tag=!FailedBallet,predicate=custom:is_sprinting] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players reset @s movement
execute as @a[scores={movement=20..}] unless entity @s[team=!Blue,team=!Yellow] run tag @s add FailedBallet
execute as @a[tag=FailedBallet] unless entity @s[team=!Blue,team=!Yellow] run scoreboard players reset @s movement