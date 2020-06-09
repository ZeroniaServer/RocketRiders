#Immortal
execute as @a[scores={deaths=..0}] unless entity @s[team=!Blue,team=!Yellow] run advancement grant @s only achievements:rr_challenges/immortal

#Ballet Dancer
execute as @a[team=Blue,tag=!FailedBallet] run advancement grant @s only achievements:rr_challenges/ballet
execute as @a[team=Yellow,tag=!FailedBallet] run advancement grant @s only achievements:rr_challenges/ballet

#Moonwalker
execute as @a[team=Blue,tag=!FailedMoon] run advancement grant @s only achievements:rr_challenges/moonwalker
execute as @a[team=Yellow,tag=!FailedMoon] run advancement grant @s only achievements:rr_challenges/moonwalker