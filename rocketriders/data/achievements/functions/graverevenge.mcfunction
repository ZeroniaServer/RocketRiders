##Revenge from the Grave achievement
##Note: Disabled for the first 3 ticks of a game to mitigate issues with fake deaths (as in Hardcore)
execute if entity @s[scores={deathCooldown=1..,PlayerKills=1..},tag=!hardcoreKilled] run advancement grant @s only achievements:rr_challenges/revenge_from_grave