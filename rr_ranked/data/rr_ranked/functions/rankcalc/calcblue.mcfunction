#Basic rankpoint formula:
#RankResult = 80+losersXP/10
#^Winner gains that amount
#Loser gets (his current XP - RankResult)*3/5

#set the values for later maths.
scoreboard players set 3 XP 3
scoreboard players set 5 XP 5
scoreboard players set 10 XP 10
scoreboard players set XPLoss XP 0


#Take current XP value of blue and yellow player.
scoreboard players operation CurrentBlue XP = @a[team=Blue,limit=1] XP
scoreboard players operation CurrentYellow XP = @a[team=Yellow,limit=1] XP

#Store yellow's current XP in LossXP as 'CurrentYellow' will be modified in the next line
scoreboard players operation LossXP XP = CurrentYellow XP

#Set rankresult to 80
scoreboard players set RankResult XP 80

#CurrentYellow / 10
scoreboard players operation CurrentYellow XP /= 10 XP

#RankResult+CurrentYellow = new RankResult
scoreboard players operation RankResult XP += CurrentYellow XP

#Add the RankResult scores to the Blue player
scoreboard players operation @a[team=Blue,limit=1] XP += RankResult XP


#Calculate LossXP for yellow and subtract their score.
scoreboard players operation LossXP XP -= RankResult XP


execute if entity @a[team=Yellow,limit=1] run scoreboard players operation LossXP XP *= @s RankScore
execute if entity @a[team=Yellow,limit=1] run scoreboard players operation LossXP XP /= 10 XP




scoreboard players operation @a[team=Yellow,limit=1] XP -= LossXP XP


#Reset all scores (optimization)
scoreboard players reset 3 XP
scoreboard players reset 5 XP
scoreboard players reset 10 XP
scoreboard players reset XPLoss XP
scoreboard players reset CurrentBlue XP
scoreboard players reset CurrentYellow XP
scoreboard players reset RankResult XP
scoreboard players reset LossXP XP