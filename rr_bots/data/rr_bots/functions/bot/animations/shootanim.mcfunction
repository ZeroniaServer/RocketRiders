scoreboard players add @s BOTanim 1

execute as @s[scores={BOTanim=1}] run data merge entity @s {Pose:{Body:[0f,9f,0f],Head:[0f,0f,356f],LeftLeg:[5f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[270f,46f,0f],RightArm:[267f,346f,0f]}}
execute as @s[scores={BOTanim=3}] run data merge entity @s {Pose:{Body:[0f,9f,0f],Head:[0f,0f,356f],LeftLeg:[5f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[270f,61f,0f],RightArm:[267f,346f,0f]}}
execute as @s[scores={BOTanim=5}] run data merge entity @s {Pose:{Body:[0f,9f,0f],Head:[0f,0f,356f],LeftLeg:[5f,0f,0f],RightLeg:[356f,0f,0f],LeftArm:[270f,75f,0f],RightArm:[267f,346f,0f]}}
execute as @s[scores={BOTanim=10..}] run function rr_bots:bot/animations/idle
scoreboard players reset @s[scores={BOTanim=10..}] BOTanim