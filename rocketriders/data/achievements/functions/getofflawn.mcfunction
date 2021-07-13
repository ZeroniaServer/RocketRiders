##Get Off My Lawn achievement
##Detects proximity to a Canopy of the recipient's team color

execute as @a[team=Yellow,scores={PlayerKills=1..}] at @s if entity @a[team=Blue,advancements={achievements:rr_utility/killed_near_canopy=true}] if entity @e[tag=YellowPlatform,distance=..7,limit=1,type=marker] run advancement grant @s only achievements:rr_challenges/get_off_lawn
execute as @a[team=Blue,scores={PlayerKills=1..}] at @s if entity @a[team=Yellow,advancements={achievements:rr_utility/killed_near_canopy=true}] if entity @e[tag=BluePlatform,distance=..7,limit=1,type=marker] run advancement grant @s only achievements:rr_challenges/get_off_lawn
execute as @s[tag=onlyBlue] as @a[team=Blue,scores={PlayerKills=1..}] at @s if entity @a[team=Blue,advancements={achievements:rr_utility/killed_near_canopy=true}] if entity @e[tag=BluePlatform,distance=..7,limit=1,type=marker] run advancement grant @s only achievements:rr_challenges/get_off_lawn
advancement revoke @a only achievements:rr_utility/killed_near_canopy