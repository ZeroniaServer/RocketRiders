##Restarts the Credits cycle and teleports all Credits armor stands to where they belong

#Kill names and reset poses
kill @e[predicate=custom:indimension,type=area_effect_cloud,tag=CreditName]
execute as @e[predicate=custom:indimension,type=armor_stand,tag=SelectedCredit] run function lobby:credits/resetpose

#Deselect all
scoreboard players reset @e[predicate=custom:indimension,type=armor_stand,tag=creditsAS] CreditCycle
tag @e[predicate=custom:indimension,type=armor_stand,tag=creditsAS] remove OldSelectedCredit
tag @e[predicate=custom:indimension,type=armor_stand,tag=creditsAS] remove SelectedCredit
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={creditsSet=0}] run tag @e[predicate=custom:indimension,type=armor_stand,tag=KaisCredits] add SelectedCredit
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={creditsSet=1}] run tag @e[predicate=custom:indimension,type=armor_stand,tag=EvieCredits] add SelectedCredit

scoreboard players reset @e[predicate=custom:indimension,type=armor_stand,tag=devcycle] CreditCycle
tag @e[predicate=custom:indimension,type=armor_stand,tag=devcycle] remove OldDevSel
tag @e[predicate=custom:indimension,type=armor_stand,tag=devcycle] remove SelectedDev
tag @e[predicate=custom:indimension,type=armor_stand,tag=EvtemaCredits] add SelectedDev

#Reset position - devs/builders
tp @e[predicate=custom:indimension,type=armor_stand,tag=EvtemaCredits] -49 216 78 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=YZEROCredits] -49 216 79 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=ChronosCredits] -49 216 77 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=BardCredits] -51 211 75 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=HugoCredits] -51 211 81 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=TrekCredits] -51 211 82 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=TypCredits] -51 211 74 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=BlockyCredits] -51 211 73 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=ToulCredits] -51 211 83 90 0

#Reset position - first set
tp @e[predicate=custom:indimension,type=armor_stand,tag=KurCredits] -51 211 72 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=CarsCredits] -51 211 71 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=MaartCredits] -51 211 70 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=DrakanCredits] -51 211 69 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=DarkCredits] -51 211 68 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=AusCredits] -51 211 67 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=AlexCredits] -51 211 66 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=EonCredits] -51 211 65 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=JohnCredits] -51 211 64 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=SwagCredits] -51 211 63 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=AdamCredits] -51 211 62 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=ProzanCredits] -51 211 84 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=CubeCredits] -51 211 85 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=RubixCredits] -51 211 86 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LemonCredits] -51 211 87 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LogicCredits] -51 211 88 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=SamCredits] -51 211 89 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=FuriousCredits] -51 211 90 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=PinguCredits] -51 211 91 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=TopazCredits] -51 211 92 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=KapaCredits] -51 211 93 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=VicousCredits] -51 211 94 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=SirsCredits] -52 211 61 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=IndigoCredits] -52 211 60 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=BeardedCredits] -52 211 59 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=SammyCredits] -52 211 58 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=YlvaCredits] -52 211 57 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=SkytesCredits] -52 211 56 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=StoneCredits] -52 211 55 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=DevonCredits] -52 211 54 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=RoboCredits] -52 211 53 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=BlueSkyCredits] -52 211 52 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=ImmoCredits] -52 211 51 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=GroundCredits] -52 211 95 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=FunnyCredits] -52 211 96 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=MosesCredits] -52 211 97 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=ZoruaCredits] -52 211 98 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=CagCredits] -52 211 99 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LlewCredits] -52 211 100 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=UnWinCredits] -52 211 101 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=CalverinCredits] -52 211 102 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=KaisCredits] -52 211 103 90 0

#Reset position - second set
tp @e[predicate=custom:indimension,type=armor_stand,tag=GriffenCredits] -51 211 72 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=SkyCredits] -51 211 71 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LexCredits] -51 211 70 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=KadesCredits] -51 211 69 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=PeasntCredits] -51 211 68 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LizzeCredits] -51 211 67 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=TNTCredits] -51 211 66 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=RangerCredits] -51 211 65 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=EraCredits] -51 211 64 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LekroCredits] -51 211 63 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=DurovCredits] -51 211 62 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=AztechCredits] -51 211 84 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=XeoCredits] -51 211 85 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=PlayingCredits] -51 211 86 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=DanielCredits] -51 211 87 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=CarlCredits] -51 211 88 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=TuijCredits] -51 211 89 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=JagCredits] -51 211 90 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=MaxCredits] -51 211 91 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=HarpCredits] -51 211 92 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=UniverseCredits] -51 211 93 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=MichalCredits] -51 211 94 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=RedstoneCredits] -52 211 61 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=YankeeCredits] -52 211 60 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=TallCredits] -52 211 59 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=OceanCredits] -52 211 58 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=MaeplCredits] -52 211 57 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=HrapCredits] -52 211 56 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LimeyCredits] -52 211 55 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=AnonCredits] -52 211 54 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=MiloCredits] -52 211 53 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LouCredits] -52 211 52 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=NyxCredits] -52 211 51 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=RubenCredits] -52 211 95 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=TacoCredits] -52 211 96 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=LPCredits] -52 211 97 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=SkoolCredits] -52 211 98 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=EnatorCredits] -52 211 99 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=AgroCredits] -52 211 100 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=NettaCredits] -52 211 101 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=DangerCredits] -52 211 102 90 0
tp @e[predicate=custom:indimension,type=armor_stand,tag=EvieCredits] -52 211 103 90 0

execute as @e[predicate=custom:indimension,type=armor_stand,tag=creditsAS] run data merge entity @s {Air:0}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=creditsAS] run data merge entity @s {Air:1}
execute as @e[predicate=custom:indimension,type=armor_stand,tag=creditsAS] run data merge entity @s {DisabledSlots:4144959}