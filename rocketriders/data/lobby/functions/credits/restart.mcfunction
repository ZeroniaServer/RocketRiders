##Restarts the Credits cycle and teleports all Credits armor stands to where they belong

#Kill names and reset poses
kill @e[tag=CreditName,type=area_effect_cloud]
execute as @e[tag=SelectedCredit,type=armor_stand] run function lobby:credits/resetpose

#Deselect all
scoreboard players reset @e[tag=creditsAS,type=armor_stand] CreditCycle
tag @e[tag=creditsAS,type=armor_stand] remove OldSelectedCredit
tag @e[tag=creditsAS,type=armor_stand] remove SelectedCredit
execute as @e[tag=Selection,type=armor_stand,scores={creditsSet=0}] run tag @e[tag=CalverinCredits,type=armor_stand] add SelectedCredit
execute as @e[tag=Selection,type=armor_stand,scores={creditsSet=1}] run tag @e[tag=DangerCredits,type=armor_stand] add SelectedCredit

scoreboard players reset @e[tag=devcycle,type=armor_stand] CreditCycle
tag @e[tag=devcycle,type=armor_stand] remove OldDevSel
tag @e[tag=devcycle,type=armor_stand] remove SelectedDev
tag @e[tag=EvtemaCredits,type=armor_stand] add SelectedDev

#Reset position - devs/builders
tp @e[tag=EvtemaCredits,type=armor_stand] -49 216 78 90 0
tp @e[tag=YZEROCredits,type=armor_stand] -49 216 79 90 0
tp @e[tag=ChronosCredits,type=armor_stand] -49 216 77 90 0
tp @e[tag=BardCredits,type=armor_stand] -51 211 75 90 0
tp @e[tag=HugoCredits,type=armor_stand] -51 211 81 90 0
tp @e[tag=TrekCredits,type=armor_stand] -51 211 82 90 0
tp @e[tag=TypCredits,type=armor_stand] -51 211 74 90 0

#Reset position - first set
tp @s[tag=RubixCredits,type=armor_stand] -51 211 73 90 0
tp @s[tag=KurCredits,type=armor_stand] -51 211 72 90 0
tp @s[tag=CarsCredits,type=armor_stand] -51 211 71 90 0
tp @s[tag=MaartCredits,type=armor_stand] -51 211 70 90 0
tp @s[tag=DrakanCredits,type=armor_stand] -51 211 69 90 0
tp @s[tag=DarkCredits,type=armor_stand] -51 211 68 90 0
tp @s[tag=AusCredits,type=armor_stand] -51 211 67 90 0
tp @s[tag=AlexCredits,type=armor_stand] -51 211 66 90 0
tp @s[tag=EonCredits,type=armor_stand] -51 211 65 90 0
tp @s[tag=JohnCredits,type=armor_stand] -51 211 64 90 0
tp @s[tag=SwagCredits,type=armor_stand] -51 211 63 90 0
tp @s[tag=AdamCredits,type=armor_stand] -51 211 62 90 0
tp @s[tag=ToulCredits,type=armor_stand] -51 211 83 90 0
tp @s[tag=ProzanCredits,type=armor_stand] -51 211 84 90 0
tp @s[tag=CubeCredits,type=armor_stand] -51 211 85 90 0
tp @s[tag=LemonCredits,type=armor_stand] -51 211 86 90 0
tp @s[tag=LogicCredits,type=armor_stand] -51 211 87 90 0
tp @s[tag=SamCredits,type=armor_stand] -51 211 88 90 0
tp @s[tag=FuriousCredits,type=armor_stand] -51 211 89 90 0
tp @s[tag=PinguCredits,type=armor_stand] -51 211 90 90 0
tp @s[tag=TopazCredits,type=armor_stand] -51 211 91 90 0
tp @s[tag=HarpCredits,type=armor_stand] -51 211 92 90 0
tp @s[tag=KapaCredits,type=armor_stand] -51 211 93 90 0
tp @s[tag=VicousCredits,type=armor_stand] -51 211 94 90 0
tp @s[tag=SirsCredits,type=armor_stand] -52 211 61 90 0
tp @s[tag=IndigoCredits,type=armor_stand] -52 211 60 90 0
tp @s[tag=BeardedCredits,type=armor_stand] -52 211 59 90 0
tp @s[tag=SammyCredits,type=armor_stand] -52 211 58 90 0
tp @s[tag=YlvaCredits,type=armor_stand] -52 211 57 90 0
tp @s[tag=SkytesCredits,type=armor_stand] -52 211 56 90 0
tp @s[tag=StoneCredits,type=armor_stand] -52 211 55 90 0
tp @s[tag=DevonCredits,type=armor_stand] -52 211 54 90 0
tp @s[tag=RoboCredits,type=armor_stand] -52 211 53 90 0
tp @s[tag=BlueSkyCredits,type=armor_stand] -52 211 52 90 0
tp @s[tag=GroundCredits,type=armor_stand] -52 211 95 90 0
tp @s[tag=FunnyCredits,type=armor_stand] -52 211 96 90 0
tp @s[tag=MosesCredits,type=armor_stand] -52 211 97 90 0
tp @s[tag=ZoruaCredits,type=armor_stand] -52 211 98 90 0
tp @s[tag=CagCredits,type=armor_stand] -52 211 99 90 0
tp @s[tag=LlewCredits,type=armor_stand] -52 211 100 90 0
tp @s[tag=UnWinCredits,type=armor_stand] -52 211 101 90 0
tp @s[tag=CalverinCredits,type=armor_stand] -52 211 102 90 0

#Reset position - second set
tp @e[tag=KaisCredits,type=armor_stand] -51 211 73 90 0
tp @e[tag=GriffenCredits,type=armor_stand] -51 211 72 90 0
tp @e[tag=SkyCredits,type=armor_stand] -51 211 71 90 0
tp @e[tag=LexCredits,type=armor_stand] -51 211 70 90 0
tp @e[tag=KadesCredits,type=armor_stand] -51 211 69 90 0
tp @e[tag=PeasntCredits,type=armor_stand] -51 211 68 90 0
tp @e[tag=LizzeCredits,type=armor_stand] -51 211 67 90 0
tp @e[tag=TNTCredits,type=armor_stand] -51 211 66 90 0
tp @e[tag=RangerCredits,type=armor_stand] -51 211 65 90 0
tp @e[tag=EraCredits,type=armor_stand] -51 211 64 90 0
tp @e[tag=LekroCredits,type=armor_stand] -51 211 63 90 0
tp @e[tag=DurovCredits,type=armor_stand] -51 211 62 90 0
tp @e[tag=NyxCredits,type=armor_stand] -51 211 83 90 0
tp @e[tag=AztechCredits,type=armor_stand] -51 211 84 90 0
tp @e[tag=XeoCredits,type=armor_stand] -51 211 85 90 0
tp @e[tag=PlayingCredits,type=armor_stand] -51 211 86 90 0
tp @e[tag=DanielCredits,type=armor_stand] -51 211 87 90 0
tp @e[tag=CarlCredits,type=armor_stand] -51 211 88 90 0
tp @e[tag=TuijCredits,type=armor_stand] -51 211 89 90 0
tp @e[tag=JagCredits,type=armor_stand] -51 211 90 90 0
tp @e[tag=MaxCredits,type=armor_stand] -51 211 91 90 0
tp @e[tag=BlockyCredits,type=armor_stand] -51 211 92 90 0
tp @e[tag=UniverseCredits,type=armor_stand] -51 211 93 90 0
tp @e[tag=MichalCredits,type=armor_stand] -51 211 94 90 0
tp @e[tag=RedstoneCredits,type=armor_stand] -52 211 61 90 0
tp @e[tag=YankeeCredits,type=armor_stand] -52 211 60 90 0
tp @e[tag=TallCredits,type=armor_stand] -52 211 59 90 0
tp @e[tag=OceanCredits,type=armor_stand] -52 211 58 90 0
tp @e[tag=MaeplCredits,type=armor_stand] -52 211 57 90 0
tp @e[tag=HrapCredits,type=armor_stand] -52 211 56 90 0
tp @e[tag=LimeyCredits,type=armor_stand] -52 211 55 90 0
tp @e[tag=AnonCredits,type=armor_stand] -52 211 54 90 0
tp @e[tag=SuperCredits,type=armor_stand] -52 211 53 90 0
tp @e[tag=ChopperCredits,type=armor_stand] -52 211 52 90 0
tp @e[tag=RubenCredits,type=armor_stand] -52 211 95 90 0
tp @e[tag=TacoCredits,type=armor_stand] -52 211 96 90 0
tp @e[tag=LPCredits,type=armor_stand] -52 211 97 90 0
tp @e[tag=SkoolCredits,type=armor_stand] -52 211 98 90 0
tp @e[tag=EnatorCredits,type=armor_stand] -52 211 99 90 0
tp @e[tag=AgroCredits,type=armor_stand] -52 211 100 90 0
tp @e[tag=NettaCredits,type=armor_stand] -52 211 101 90 0
tp @e[tag=DangerCredits,type=armor_stand] -52 211 102 90 0