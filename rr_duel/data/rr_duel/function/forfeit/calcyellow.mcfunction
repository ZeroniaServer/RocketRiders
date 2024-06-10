#Basic rankpoint formula:
#RankResult = 80+losersXP*WinnersRankScore/50
#Winner gains that amount
#Loser loses RankResult*LosersRankScore/10
#Loser gains WinnersXP*LosersRankScore/600

#set the values for later maths.
scoreboard players set $10 XP 10
scoreboard players set $50 XP 50
scoreboard players set $600 XP 600
scoreboard players set $XPLoss XP 0
scoreboard players set $Buffer XP 0

#Take current XP value of blue and yellow player.
scoreboard players operation $CurrentBlue XP = @a[x=0,team=Blue,limit=1] XP
scoreboard players operation $CurrentYellow XP = @a[x=0,team=Yellow,limit=1] XP

#Set rankresult to 80
scoreboard players set $RankResult XP 20

#CurrentYellow / 50
scoreboard players operation $CurrentYellow XP /= $50 XP

#CurrentYellow * YellowRankScore
execute if entity @a[x=0,team=Blue,limit=1] run scoreboard players operation $CurrentYellow XP *= @s RankScore

#RankResult+CurrentYellow = new RankResult
scoreboard players operation $RankResult XP += $CurrentYellow XP

#Add the RankResult scores to the Blue player
scoreboard players operation @a[x=0,team=Blue,limit=1] ForfeitWin += $RankResult XP

#Set LossXP to RankResult
scoreboard players operation $LossXP XP = $RankResult XP

#LossXP * YellowRankScore
execute if entity @a[x=0,team=Yellow,limit=1] run scoreboard players operation $LossXP XP *= @a[x=0,team=Yellow,limit=1] RankScore

#LossXP / 10
scoreboard players operation $LossXP XP /= $10 XP

#Subtract the LossXP score from the Yellow player
scoreboard players operation @a[x=0,team=Yellow,limit=1] ForfeitLoss = $LossXP XP

#Set Buffer to current Blue XP
scoreboard players operation $Buffer XP = @a[x=0,team=Blue,limit=1] XP

#Buffer * YellowRankScore
scoreboard players operation $Buffer XP *= @a[x=0,team=Yellow,limit=1] RankScore

#Buffer / 600
scoreboard players operation $Buffer XP /= $600 XP

#Add the Buffer score to the Yellow player
scoreboard players operation @a[x=0,team=Yellow,limit=1] ForfeitWin = $Buffer XP

#Reset all scores (optimization)
scoreboard players reset $10 XP
scoreboard players reset $50 XP
scoreboard players reset $600 XP
scoreboard players reset $XPLoss XP
scoreboard players reset $CurrentBlue XP
scoreboard players reset $CurrentYellow XP
scoreboard players reset $RankResult XP
scoreboard players reset $LossXP XP
scoreboard players reset $Buffer XP