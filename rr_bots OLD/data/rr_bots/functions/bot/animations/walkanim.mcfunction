scoreboard players add @s BOTanim 1

execute if entity @s[scores={BOTanim=1}] run data merge entity @s {Pose:{LeftLeg:[21.0f,0.0f,0.0f],RightLeg:[340.0f,0.0f,0.0f]}}
execute if entity @s[scores={BOTanim=3}] run data merge entity @s {Pose:{LeftLeg:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={BOTanim=5}] run data merge entity @s {Pose:{LeftLeg:[340.0f,0.0f,0.0f],RightLeg:[21.0f,0.0f,0.0f]}}
execute if entity @s[scores={BOTanim=6..}] run function rr_bots:bot/animations/idle
scoreboard players reset @s[scores={BOTanim=6..}] BOTanim