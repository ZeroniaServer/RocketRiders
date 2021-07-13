##Revenge from the Grave achievement
##Note: Disabled for the first 3 ticks of a game to mitigate issues with fake deaths (as in Hardcore)

execute as @s[scores={gametime=3..}] as @a[scores={deathCooldown=1..,PlayerKills=1..},tag=!hardcoreKilled] unless entity @s[team=!Blue,team=!Yellow] run advancement grant @s only achievements:rr_challenges/revenge_from_grave