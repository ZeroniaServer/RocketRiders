##################################################################
## CYCLE: How each Credits armor stand is displayed in sequence ##
##################################################################

##Playtesters
scoreboard players add @e[tag=SelectedCredit,type=armor_stand] CreditCycle 1

#Position/posing/effects for selected Credits armor stand
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run tp @s ~-2 ~2 ~
#Poses are randomized
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose1"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose2"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose3"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose4"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["LobbyPoseRNG","Pose4"]}
tag @e[tag=LobbyPoseRNG,limit=1,sort=random,type=area_effect_cloud] add SelLPRNG
execute as @e[tag=SelectedCredit,type=armor_stand] if entity @e[tag=SelLPRNG,tag=Pose1,type=area_effect_cloud] run function lobby:credits/pose1
execute as @e[tag=SelectedCredit,type=armor_stand] if entity @e[tag=SelLPRNG,tag=Pose2,type=area_effect_cloud] run function lobby:credits/pose2
execute as @e[tag=SelectedCredit,type=armor_stand] if entity @e[tag=SelLPRNG,tag=Pose3,type=area_effect_cloud] run function lobby:credits/pose3
execute as @e[tag=SelectedCredit,type=armor_stand] if entity @e[tag=SelLPRNG,tag=Pose4,type=area_effect_cloud] run function lobby:credits/pose4
kill @e[tag=LobbyPoseRNG,type=area_effect_cloud]
execute as @e[tag=SelectedCredit,type=armor_stand] at @s run particle dust 0 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force

#Displays name
function lobby:credits/names

#Selecting an adjacent Credits armor stand
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] at @s run tp @s ~2 ~-2 ~
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] run tag @s add OldSelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] at @s run tag @e[tag=creditsAS,tag=!BuilderCreditsAS,tag=!devCreditsAS,tag=!OldSelectedCredit,tag=!SelectedCredit,limit=1,sort=nearest,type=armor_stand] add SelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] run function lobby:credits/resetpose
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] run tag @s remove SelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] run scoreboard players reset @s CreditCycle

#Resetting cycle
execute as @e[tag=OldSelectedCredit,type=armor_stand] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!OldSelectedCredit,type=armor_stand] run scoreboard players reset @e[tag=creditsAS,type=armor_stand] CreditCycle
execute as @e[tag=OldSelectedCredit,type=armor_stand] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!OldSelectedCredit,type=armor_stand] run tag @e[tag=CalverinCredits,type=armor_stand] add SelectedCredit
execute as @e[tag=OldSelectedCredit,type=armor_stand] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!OldSelectedCredit,type=armor_stand] run tag @e[tag=OldSelectedCredit,type=armor_stand] remove OldSelectedCredit

##Developers
scoreboard players add @e[tag=SelectedDev,type=armor_stand] CreditCycle 1

#Position/posing/effects
execute as @e[tag=SelectedDev,scores={CreditCycle=1},type=armor_stand] at @s run tp @s -51 215 78
execute as @e[tag=SelectedDev,scores={CreditCycle=2..79},type=armor_stand] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=SelectedDev,type=armor_stand] at @s run particle dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tag @s add OldDevSel
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=EvtemaCredits] -49 216 78 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=YZEROCredits] -49 216 79 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=ChronosCredits] -49 216 77 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=BardCredits] -51 211 75 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=HugoCredits] -51 211 81 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tag @e[tag=devcycle,tag=!OldDevSel,limit=1,sort=nearest,type=armor_stand] add SelectedDev
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tag @s remove SelectedDev
scoreboard players reset @e[tag=OldDevSel,type=armor_stand] CreditCycle

#Resetting cycle
execute as @e[tag=OldDevSel,type=armor_stand] unless entity @e[tag=devcycle,tag=!OldDevSel,type=armor_stand] run scoreboard players reset @e[tag=devcycle,type=armor_stand] CreditCycle
execute as @e[tag=OldDevSel,type=armor_stand] unless entity @e[tag=devcycle,tag=!OldDevSel,type=armor_stand] run tag @e[tag=EvtemaCredits,type=armor_stand] add SelectedDev
execute as @e[tag=OldDevSel,type=armor_stand] unless entity @e[tag=devcycle,tag=!OldDevSel,type=armor_stand] run tag @e[tag=OldDevSel,type=armor_stand] remove OldDevSel