#detect movement blue
execute as @a[team=Blue,tag=!CompletedBallet,tag=!FailedBallet] run scoreboard players add @s timeSinceJump 1
execute as @a[team=Blue,tag=!CompletedBallet,tag=!FailedBallet,scores={jumping=1..}] run scoreboard players reset @s timeSinceJump
execute as @a[team=Blue,tag=!CompletedBallet,tag=!FailedBallet,scores={jumping=1..}] run scoreboard players reset @s jumping
execute as @a[team=Blue,tag=!CompletedBallet,scores={timeSinceJump=30..}] run tag @s add FailedBallet
scoreboard players reset @a[team=Blue,tag=FailedBallet] timeSinceJump

execute as @a[team=Blue,tag=!CompletedBallet,tag=!FailedBallet] run scoreboard players add @s movement 1
execute as @a[team=Blue,tag=!CompletedBallet,tag=!FailedBallet,predicate=custom:is_sprinting] run scoreboard players reset @s movement
execute as @a[team=Blue,tag=!CompletedBallet,scores={movement=10..}] run tag @s add FailedBallet
scoreboard players reset @a[team=Blue,tag=FailedBallet] movement

#detect movement yellow
execute as @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet] run scoreboard players add @s timeSinceJump 1
execute as @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet,scores={jumping=1..}] run scoreboard players reset @s timeSinceJump
execute as @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet,scores={jumping=1..}] run scoreboard players reset @s jumping
execute as @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet,scores={timeSinceJump=30..}] run tag @s add FailedBallet
scoreboard players reset @a[team=Yellow,tag=FailedBallet] timeSinceJump

execute as @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet] run scoreboard players add @s movement 1
execute as @a[team=Yellow,tag=!CompletedBallet,tag=!FailedBallet,predicate=custom:is_sprinting] run scoreboard players reset @s movement
execute as @a[team=Yellow,tag=!CompletedBallet,scores={movement=10..}] run tag @s add FailedBallet
scoreboard players reset @a[team=Yellow,tag=FailedBallet] movement