kill @e[tag=CreditName]

execute as @e[tag=SelectedCredit] at @s run tp @s ~2 ~-2 ~
execute as @e[tag=SelectedCredit] run function lobby:credits/resetpose

scoreboard players reset @e[tag=creditsAS] CreditCycle
tag @e[tag=creditsAS] remove OldSelectedCredit
tag @e[tag=creditsAS] remove SelectedCredit
tag @e[tag=UnWinCredits] add SelectedCredit

scoreboard players reset @e[tag=devcycle] CreditCycle
tag @e[tag=devcycle] remove OldDevSel
tag @e[tag=devcycle] remove SelectedDev
tag @e[tag=EvtemaCredits] add SelectedDev

tp @e[tag=EvtemaCredits] -49 216 78 90 0
tp @e[tag=YZEROCredits] -49 216 79 90 0
tp @e[tag=ChronosCredits] -49 216 77 90 0
tp @e[tag=BardCredits] -51 211 75 90 0
tp @e[tag=HugoCredits] -51 211 81 90 0