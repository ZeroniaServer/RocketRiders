#Basic rankpoint formula:
#RankResult = 80+losersXP*WinnersRankScore/50
#Winner gains that amount
#Loser loses RankResult*LosersRankScore/10
#Loser gains WinnersXP*LosersRankScore/600

#set the values for later maths.
scoreboard players set $XPLoss XP 0
scoreboard players set $Buffer XP 0

#Take current XP value of blue and yellow player.
scoreboard players operation $CurrentBlue XP = @a[x=0,predicate=custom:team/blue,limit=1] XP
scoreboard players operation $CurrentYellow XP = @a[x=0,predicate=custom:team/yellow,limit=1] XP

#Set rankresult to 80
scoreboard players set $RankResult XP 20

#CurrentBlue / 50
scoreboard players operation $CurrentBlue XP /= $50 constant

#CurrentBlue * BlueRankScore
execute if entity @a[x=0,predicate=custom:team/yellow,limit=1] run scoreboard players operation $CurrentBlue XP *= @s RankScore

#RankResult+CurrentBlue = new RankResult
scoreboard players operation $RankResult XP += $CurrentBlue XP

#Add the RankResult scores to the Yellow player
scoreboard players operation @a[x=0,predicate=custom:team/yellow,limit=1] ForfeitWin += $RankResult XP

#Set LossXP to RankResult
scoreboard players operation $LossXP XP = $RankResult XP

#LossXP * BlueRankScore
execute if entity @a[x=0,predicate=custom:team/blue,limit=1] run scoreboard players operation $LossXP XP *= @a[x=0,predicate=custom:team/blue,limit=1] RankScore

#LossXP / 10
scoreboard players operation $LossXP XP /= $10 constant

#Subtract the LossXP score from the Blue player
scoreboard players operation @a[x=0,predicate=custom:team/blue,limit=1] ForfeitLoss = $LossXP XP

#Set Buffer to current Yellow XP
scoreboard players operation $Buffer XP = @a[x=0,predicate=custom:team/yellow,limit=1] XP

#Buffer * BlueRankScore
scoreboard players operation $Buffer XP *= @a[x=0,predicate=custom:team/blue,limit=1] RankScore

#Buffer / 600
scoreboard players operation $Buffer XP /= $600 constant

#Add the Buffer score to the Blue player
scoreboard players operation @a[x=0,predicate=custom:team/blue,limit=1] ForfeitWin = $Buffer XP

#Reset all scores (optimization)
scoreboard players reset $XPLoss XP
scoreboard players reset $CurrentBlue XP
scoreboard players reset $CurrentYellow XP
scoreboard players reset $RankResult XP
scoreboard players reset $LossXP XP
scoreboard players reset $Buffer XP