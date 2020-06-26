##Any achievements to be given after a game ends
#Immortal
execute as @a[scores={deaths=..0}] unless entity @s[team=!Blue,team=!Yellow] run advancement grant @s only achievements:rr_challenges/immortal

#Ballet Dancer
execute as @a[tag=!FailedBallet,tag=firstMoved] unless entity @s[team=!Blue,team=!Yellow] run advancement grant @s only achievements:rr_challenges/ballet

#Moonwalker
execute as @a[tag=!FailedMoon,tag=firstMoved] unless entity @s[team=!Blue,team=!Yellow] run advancement grant @s only achievements:rr_challenges/moonwalker