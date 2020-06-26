##Soul Collector achievement
execute as @a unless entity @s[team=!Blue,team=!Yellow] if entity @s[scores={kills=50..}] run advancement grant @s only achievements:rr_challenges/soul_collector