###########################################################
## CYCLE: Showcases the Credits armor stands in sequence ##
###########################################################

##Playtesters
scoreboard players add @e[tag=SelectedCredit,type=armor_stand] CreditCycle 1

#Position/posing/effects for selected Credits armor stand
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run tp @s ~-2 ~2 ~
#Poses are randomized
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose1"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose2"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose3"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose4"]}
execute as @e[tag=SelectedCredit,scores={CreditCycle=1},type=armor_stand] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose4"]}
tag @e[tag=LobbyPoseRNG,limit=1,sort=random,type=marker] add SelLPRNG
execute as @e[tag=SelectedCredit,type=armor_stand] if entity @e[tag=SelLPRNG,tag=Pose1,type=marker] run function lobby:credits/pose1
execute as @e[tag=SelectedCredit,type=armor_stand] if entity @e[tag=SelLPRNG,tag=Pose2,type=marker] run function lobby:credits/pose2
execute as @e[tag=SelectedCredit,type=armor_stand] if entity @e[tag=SelLPRNG,tag=Pose3,type=marker] run function lobby:credits/pose3
execute as @e[tag=SelectedCredit,type=armor_stand] if entity @e[tag=SelLPRNG,tag=Pose4,type=marker] run function lobby:credits/pose4
kill @e[tag=LobbyPoseRNG,type=marker]
execute as @e[tag=SelectedCredit,type=armor_stand] at @s run particle dust 0 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force

#Displays name
function lobby:credits/names

#Selecting an adjacent Credits armor stand
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] at @s run function lobby:credits/goback
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] run tag @s add OldSelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] at @s run tag @e[tag=creditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS,tag=!devCreditsAS,tag=!OldSelectedCredit,tag=!SelectedCredit,limit=1,sort=nearest,type=armor_stand] add SelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] run function lobby:credits/resetpose
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] run tag @s remove SelectedCredit
execute as @e[tag=SelectedCredit,scores={CreditCycle=60..},type=armor_stand] run scoreboard players reset @s CreditCycle

##Developers/Builders
scoreboard players add @e[tag=SelectedDev,type=armor_stand] CreditCycle 1

#Position/posing/effects
execute as @e[tag=SelectedDev,scores={CreditCycle=1},type=armor_stand] at @s run tp @s -51 215 78
execute as @e[tag=SelectedDev,scores={CreditCycle=6..79},type=armor_stand] at @s run tp @s -51 215 78 ~5 ~
execute as @e[tag=SelectedDev,tag=EvtemaCredits,type=armor_stand] at @s run particle dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,tag=YZEROCredits,type=armor_stand] at @s run particle dust 0 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,tag=ChronosCredits,type=armor_stand] at @s run particle dust 0 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,tag=BardCredits,type=armor_stand] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,tag=HugoCredits,type=armor_stand] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,tag=TrekCredits,type=armor_stand] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,tag=TypCredits,type=armor_stand] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,tag=BlockyCredits,type=armor_stand] at @s run particle dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,tag=ToulCredits,type=armor_stand] at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tag @s add OldDevSel
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=EvtemaCredits] -49 216 78 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=YZEROCredits] -49 216 79 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=ChronosCredits] -49 216 77 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=BardCredits] -51 211 75 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=HugoCredits] -51 211 81 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=TrekCredits] -51 211 82 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=TypCredits] -51 211 74 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=BlockyCredits] -51 211 73 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tp @s[tag=ToulCredits] -51 211 83 90 0
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tag @e[tag=devcycle,tag=!OldDevSel,limit=1,sort=nearest,type=armor_stand] add SelectedDev
execute as @e[tag=SelectedDev,scores={CreditCycle=80..},type=armor_stand] run tag @s remove SelectedDev
scoreboard players reset @e[tag=OldDevSel,type=armor_stand] CreditCycle

#Resetting cycle
execute as @e[tag=OldDevSel,type=armor_stand] unless entity @e[tag=devcycle,tag=!OldDevSel,type=armor_stand] run scoreboard players reset @e[tag=devcycle,type=armor_stand] CreditCycle
execute as @e[tag=OldDevSel,type=armor_stand] unless entity @e[tag=devcycle,tag=!OldDevSel,type=armor_stand] run tag @e[tag=EvtemaCredits,type=armor_stand] add SelectedDev
execute as @e[tag=OldDevSel,type=armor_stand] unless entity @e[tag=devcycle,tag=!OldDevSel,type=armor_stand] run tag @e[tag=OldDevSel,type=armor_stand] remove OldDevSel

##Switch to next Credits set
execute as @e[tag=OldSelectedCredit,type=armor_stand] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS,tag=!OldSelectedCredit,type=armor_stand] run scoreboard players reset @e[tag=creditsAS,type=armor_stand] CreditCycle
execute as @e[tag=OldSelectedCredit,type=armor_stand] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS,tag=!OldSelectedCredit,type=armor_stand] if entity @e[tag=Selection,type=armor_stand,scores={creditsSet=0}] run function lobby:credits/initialize2
execute as @e[tag=OldSelectedCredit,type=armor_stand] unless entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS,tag=!OldSelectedCredit,type=armor_stand] if entity @e[tag=Selection,type=armor_stand,scores={creditsSet=1}] run function lobby:credits/initialize