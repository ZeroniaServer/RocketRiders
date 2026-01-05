execute unless predicate game:phase/match run return run kill @e[x=0,type=marker,tag=explosion_deepslate_cracks]

schedule function game:explosion_deepslate_cracks/logic/schedule 1t append
execute as @e[x=0,type=marker,tag=explosion_deepslate_cracks.small] at @s run function game:explosion_deepslate_cracks/logic/small
execute as @e[x=0,type=marker,tag=explosion_deepslate_cracks.medium] at @s run function game:explosion_deepslate_cracks/logic/medium
execute as @e[x=0,type=marker,tag=explosion_deepslate_cracks.large] at @s run function game:explosion_deepslate_cracks/logic/large
kill @e[x=0,type=marker,tag=explosion_deepslate_cracks]
schedule clear game:explosion_deepslate_cracks/logic/schedule
