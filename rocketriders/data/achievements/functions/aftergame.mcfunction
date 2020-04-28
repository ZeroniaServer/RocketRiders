#Immortal
advancement grant @a[scores={deaths=..0}] only achievements:rr_challenges/immortal

#Ballet Dancer
execute as @a[team=Blue,tag=!FailedBallet] run advancement grant @s only achievements:rr_challenges/ballet
execute as @a[team=Yellow,tag=!FailedBallet] run advancement grant @s only achievements:rr_challenges/ballet

scoreboard players reset @a jumping
scoreboard players reset @a timeSinceJump