scoreboard players add @s BOTanim 1

execute if entity @s[scores={BOTanim=1}] run data merge entity @s {Pose:{LeftLeg:[21f,0f,0f],RightLeg:[340f,0f,0f]}}
execute if entity @s[scores={BOTanim=3}] run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute if entity @s[scores={BOTanim=5}] run data merge entity @s {Pose:{LeftLeg:[340f,0f,0f],RightLeg:[21f,0f,0f]}}
execute if entity @s[scores={BOTanim=6..}] run function rr_bots:bot/animations/idle
scoreboard players reset @s[scores={BOTanim=6..}] BOTanim