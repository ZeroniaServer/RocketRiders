###########################################################
## CYCLE: Showcases the Credits armor stands in sequence ##
###########################################################

##Playtesters
scoreboard players add @e[type=armor_stand,tag=SelectedCredit] CreditCycle 1

#Position/posing/effects for selected Credits armor stand
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=1}] at @s run tp @s ~-2 ~2 ~
#Poses are randomized
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose1"]}
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose2"]}
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose3"]}
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose4"]}
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=1}] at @s run summon marker ~ ~ ~ {Tags:["LobbyPoseRNG","Pose4"]}
tag @e[type=marker,tag=LobbyPoseRNG,limit=1,sort=random] add SelLPRNG
execute as @e[type=armor_stand,tag=SelectedCredit] if entity @e[type=marker,tag=SelLPRNG,tag=Pose1] run function lobby:credits/pose1
execute as @e[type=armor_stand,tag=SelectedCredit] if entity @e[type=marker,tag=SelLPRNG,tag=Pose2] run function lobby:credits/pose2
execute as @e[type=armor_stand,tag=SelectedCredit] if entity @e[type=marker,tag=SelLPRNG,tag=Pose3] run function lobby:credits/pose3
execute as @e[type=armor_stand,tag=SelectedCredit] if entity @e[type=marker,tag=SelLPRNG,tag=Pose4] run function lobby:credits/pose4
kill @e[type=marker,tag=LobbyPoseRNG]
execute as @e[type=armor_stand,tag=SelectedCredit] at @s run particle dust 0 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]

#Displays name
function lobby:credits/names

#Selecting an adjacent Credits armor stand
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=60..}] at @s run function lobby:credits/goback
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=60..}] run tag @s add OldSelectedCredit
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=60..}] at @s run tag @e[type=armor_stand,tag=creditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS,tag=!devCreditsAS,tag=!OldSelectedCredit,tag=!SelectedCredit,limit=1,sort=nearest] add SelectedCredit
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=60..}] run function lobby:credits/resetpose
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=60..}] run tag @s remove SelectedCredit
execute as @e[type=armor_stand,tag=SelectedCredit,scores={CreditCycle=60..}] run scoreboard players reset @s CreditCycle

##Developers/Builders
scoreboard players add @e[type=armor_stand,tag=SelectedDev] CreditCycle 1

#Position/posing/effects
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=1}] at @s run tp @s -51 214 78
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=6..79}] at @s run tp @s -51 214 78 ~5 ~
execute as @e[type=armor_stand,tag=SelectedDev,tag=EvtemaCredits] at @s run particle dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,tag=YZEROCredits] at @s run particle dust 0 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,tag=ChronosCredits] at @s run particle dust 0 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,tag=BardCredits] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,tag=HugoCredits] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,tag=TrekCredits] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,tag=TypCredits] at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,tag=BlockyCredits] at @s run particle dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,tag=ToulCredits] at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force @a[predicate=!custom:belowroof]
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tag @s add OldDevSel
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=EvtemaCredits] -49 216 78 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=YZEROCredits] -49 216 79 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=ChronosCredits] -49 216 77 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=BardCredits] -51 211 75 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=HugoCredits] -51 211 81 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=TrekCredits] -51 211 82 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=TypCredits] -51 211 74 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=BlockyCredits] -51 211 73 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tp @s[tag=ToulCredits] -51 211 83 90 0
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tag @e[type=armor_stand,tag=devcycle,tag=!OldDevSel,limit=1,sort=nearest] add SelectedDev
execute as @e[type=armor_stand,tag=SelectedDev,scores={CreditCycle=80..}] run tag @s remove SelectedDev
scoreboard players reset @e[type=armor_stand,tag=OldDevSel] CreditCycle

#Resetting cycle
execute as @e[type=armor_stand,tag=OldDevSel] unless entity @e[type=armor_stand,tag=devcycle,tag=!OldDevSel] run scoreboard players reset @e[type=armor_stand,tag=devcycle] CreditCycle
execute as @e[type=armor_stand,tag=OldDevSel] unless entity @e[type=armor_stand,tag=devcycle,tag=!OldDevSel] run tag @e[type=armor_stand,tag=EvtemaCredits] add SelectedDev
execute as @e[type=armor_stand,tag=OldDevSel] unless entity @e[type=armor_stand,tag=devcycle,tag=!OldDevSel] run tag @e[type=armor_stand,tag=OldDevSel] remove OldDevSel

##Switch to next Credits set
execute as @e[type=armor_stand,tag=OldSelectedCredit] unless entity @e[type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS,tag=!OldSelectedCredit] run scoreboard players reset @e[type=armor_stand,tag=creditsAS] CreditCycle
execute as @e[type=armor_stand,tag=OldSelectedCredit] unless entity @e[type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS,tag=!OldSelectedCredit] if entity @e[type=armor_stand,tag=Selection,scores={creditsSet=0}] run function lobby:credits/initialize2
execute as @e[type=armor_stand,tag=OldSelectedCredit] unless entity @e[type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS,tag=!OldSelectedCredit] if entity @e[type=armor_stand,tag=Selection,scores={creditsSet=1}] run function lobby:credits/initialize