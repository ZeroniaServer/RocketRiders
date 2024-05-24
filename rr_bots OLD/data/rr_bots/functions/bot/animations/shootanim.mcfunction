scoreboard players add @s BOTanim 1

execute if entity @s[scores={BOTanim=1}] run data merge entity @s {Pose:{Body:[0.0f,9.0f,0.0f],Head:[0.0f,0.0f,356.0f],LeftLeg:[5.0f,0.0f,0.0f],RightLeg:[356.0f,0.0f,0.0f],LeftArm:[270.0f,46.0f,0.0f],RightArm:[267.0f,346.0f,0.0f]}}
execute if entity @s[scores={BOTanim=3}] run data merge entity @s {Pose:{Body:[0.0f,9.0f,0.0f],Head:[0.0f,0.0f,356.0f],LeftLeg:[5.0f,0.0f,0.0f],RightLeg:[356.0f,0.0f,0.0f],LeftArm:[270.0f,61.0f,0.0f],RightArm:[267.0f,346.0f,0.0f]}}
execute if entity @s[scores={BOTanim=5}] run data merge entity @s {Pose:{Body:[0.0f,9.0f,0.0f],Head:[0.0f,0.0f,356.0f],LeftLeg:[5.0f,0.0f,0.0f],RightLeg:[356.0f,0.0f,0.0f],LeftArm:[270.0f,75.0f,0.0f],RightArm:[267.0f,346.0f,0.0f]}}
execute if entity @s[scores={BOTanim=10..}] run function rr_bots:bot/animations/idle
scoreboard players reset @s[scores={BOTanim=10..}] BOTanim