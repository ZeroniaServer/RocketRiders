##Restarts the Credits cycle and teleports all Credits armor stands to where they belong

#Kill names and reset poses
kill @e[tag=CreditName]
execute as @e[tag=SelectedCredit] run function lobby:credits/resetpose

#Deselect all
scoreboard players reset @e[tag=creditsAS] CreditCycle
tag @e[tag=creditsAS] remove OldSelectedCredit
tag @e[tag=creditsAS] remove SelectedCredit
tag @e[tag=CalverinCredits] add SelectedCredit

scoreboard players reset @e[tag=devcycle] CreditCycle
tag @e[tag=devcycle] remove OldDevSel
tag @e[tag=devcycle] remove SelectedDev
tag @e[tag=EvtemaCredits] add SelectedDev

#Reset position
tp @e[tag=EvtemaCredits] -49 216 78 90 0
tp @e[tag=YZEROCredits] -49 216 79 90 0
tp @e[tag=ChronosCredits] -49 216 77 90 0
tp @e[tag=BardCredits] -51 211 75 90 0
tp @e[tag=HugoCredits] -51 211 81 90 0

tp @e[tag=KurCredits] -51 211 74 90 0
tp @e[tag=RubixCredits] -51 211 73 90 0
tp @e[tag=TypCredits] -51 211 72 90 0
tp @e[tag=CarsCredits] -51 211 71 90 0
tp @e[tag=MaartCredits] -51 211 70 90 0
tp @e[tag=DrakanCredits] -51 211 69 90 0
tp @e[tag=DarkCredits] -51 211 68 90 0
tp @e[tag=AusCredits] -51 211 67 90 0
tp @e[tag=DurovCredits] -51 211 66 90 0
tp @e[tag=EonCredits] -51 211 65 90 0
tp @e[tag=JohnCredits] -51 211 64 90 0
tp @e[tag=KaisCredits] -51 211 63 90 0
tp @e[tag=SeraCredits] -51 211 62 90 0
tp @e[tag=SirsCredits] -51 211 82 90 0
tp @e[tag=NyxCredits] -51 211 83 90 0
tp @e[tag=AlexCredits] -51 211 84 90 0
tp @e[tag=AdamCredits] -51 211 85 90 0
tp @e[tag=SamCredits] -51 211 86 90 0
tp @e[tag=AztechCredits] -51 211 87 90 0
tp @e[tag=PinguCredits] -51 211 88 90 0
tp @e[tag=TopazCredits] -51 211 89 90 0
tp @e[tag=XeoranCredits] -51 211 90 90 0
tp @e[tag=GriffenCredits] -51 211 91 90 0
tp @e[tag=KapaCredits] -51 211 92 90 0
tp @e[tag=SkyCredits] -51 211 93 90 0
tp @e[tag=VicousCredits] -51 211 94 90 0
tp @e[tag=ProzanCredits] -52 211 61 90 0
tp @e[tag=ToulCredits] -52 211 60 90 0
tp @e[tag=IndigoCredits] -52 211 59 90 0
tp @e[tag=BeardedCredits] -52 211 58 90 0
tp @e[tag=LexCredits] -52 211 57 90 0
tp @e[tag=KadesCredits] -52 211 56 90 0
tp @e[tag=DanielCredits] -52 211 55 90 0
tp @e[tag=CarlCredits] -52 211 54 90 0
tp @e[tag=StoneCredits] -52 211 53 90 0
tp @e[tag=TuijCredits] -52 211 52 90 0
tp @e[tag=JagCredits] -52 211 51 90 0
tp @e[tag=RoboCredits] -52 211 50 90 0
tp @e[tag=UniverseCredits] -52 211 49 90 0
tp @e[tag=GroundCredits] -52 211 95 90 0
tp @e[tag=FunnyCredits] -52 211 96 90 0
tp @e[tag=MosesCredits] -52 211 97 90 0
tp @e[tag=ZoruaCredits] -52 211 98 90 0
tp @e[tag=LizzeCredits] -52 211 99 90 0
tp @e[tag=TNTCredits] -52 211 100 90 0
tp @e[tag=RangerCredits] -52 211 101 90 0
tp @e[tag=EraCredits] -52 211 102 90 0
tp @e[tag=CagCredits] -52 211 103 90 0
tp @e[tag=LlewCredits] -52 211 104 90 0
tp @e[tag=LekroCredits] -52 211 105 90 0
tp @e[tag=UnWinCredits] -52 211 106 90 0
tp @e[tag=CalverinCredits] -52 211 107 90 0