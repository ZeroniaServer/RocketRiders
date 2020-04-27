scoreboard players add @e[tag=SelectedCredit] CreditCycle 1

execute as @e[tag=SelectedCredit,scores={CreditCycle=1}] at @s run tp @s ~-2 ~2 ~
execute as @e[tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose1"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose2"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose3"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose4"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose4"]}
tag @e[tag=LobbyPoseRNG,limit=1,sort=random] add SelLPRNG
execute as @e[tag=SelectedCredit] if entity @e[tag=SelLPRNG,tag=Pose1] run function lobby:credits/pose1
execute as @e[tag=SelectedCredit] if entity @e[tag=SelLPRNG,tag=Pose2] run function lobby:credits/pose2
execute as @e[tag=SelectedCredit] if entity @e[tag=SelLPRNG,tag=Pose3] run function lobby:credits/pose3
execute as @e[tag=SelectedCredit] if entity @e[tag=SelLPRNG,tag=Pose4] run function lobby:credits/pose4
kill @e[tag=LobbyPoseRNG]


execute as @e[tag=SelectedCredit] at @s run particle dust 0 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..}] at @s run tp @s ~2 ~-2 ~
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..}] at @s run tag @s add OldSelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..}] at @s run tag @e[tag=creditsAS,tag=!BuilderCreditsAS,tag=!devCreditsAS,tag=!OldSelectedCredit,tag=!SelectedCredit,limit=1,sort=nearest] add SelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..}] at @s run function lobby:credits/resetpose
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..}] at @s run tag @s remove SelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..}] at @s run scoreboard players reset @s CreditCycle




execute as @e[tag=OldSelectedCredit] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!OldSelectedCredit] run scoreboard players reset @e[tag=creditsAS] CreditCycle
execute as @e[tag=OldSelectedCredit] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!OldSelectedCredit] run tag @e[tag=LekroCredits] add SelectedCredit
execute as @e[tag=OldSelectedCredit] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!OldSelectedCredit] run tag @e[tag=OldSelectedCredit] remove OldSelectedCredit