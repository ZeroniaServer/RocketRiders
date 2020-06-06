#Basic rankpoint formula:
#RankResult = 80+losersXP*WinnersRankScore/50
#Winner gains that amount
#Loser loses RankResult*LosersRankScore/10
#Loser gains WinnersXP*LosersRankScore/600

#set the values for later maths.
scoreboard players set 3 XP 3
scoreboard players set 5 XP 5
scoreboard players set 10 XP 10
scoreboard players set 50 XP 50
scoreboard players set 600 XP 600
scoreboard players set XPLoss XP 0
scoreboard players set Buffer XP 0
scoreboard players set NetBlue XP 0
scoreboard players set NetYellow XP 0

##GAIN
#Take current XP value of blue and yellow player.
scoreboard players operation CurrentBlue XP = @a[team=Blue,limit=1] XP
scoreboard players operation CurrentYellow XP = @a[team=Yellow,limit=1] XP

#Set RankResult to 80
scoreboard players set RankResult XP 80

#CurrentBlue / 50
scoreboard players operation CurrentBlue XP /= 50 XP

#CurrentBlue * YellowRankScore
execute if entity @a[team=Yellow,limit=1] run scoreboard players operation CurrentBlue XP *= @a[team=Yellow,limit=1] RankScore

#RankResult+CurrentBlue = new RankResult
scoreboard players operation RankResult XP += CurrentBlue XP

#Add the RankResult scores to the Yellow player
scoreboard players operation @a[team=Yellow,limit=1] XP += RankResult XP
scoreboard players operation NetYellow XP += RankResult XP

#Announce new Yellow XP
execute as @a[team=Yellow,limit=1] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" gained ","color":"green"},{"text":"+","bold":true,"color":"dark_green"},{"score":{"name":"NetYellow","objective":"XP"},"bold":true,"color":"dark_green"},{"text":", making their XP a total of: ","color":"green"},{"score":{"name":"@s","objective":"XP"},"bold":true,"color":"light_purple"}]

##LOSS
#Set LossXP to RankResult
scoreboard players operation LossXP XP = RankResult XP

#LossXP * BlueRankScore
execute if entity @a[team=Blue,limit=1] run scoreboard players operation LossXP XP *= @a[team=Blue,limit=1] RankScore

#LossXP / 10
scoreboard players operation LossXP XP /= 10 XP

#Subtract the LossXP score from the Blue player
scoreboard players operation @a[team=Blue,limit=1] XP -= LossXP XP
scoreboard players operation NetBlue XP -= LossXP XP

#Set Buffer to current Yellow XP
scoreboard players operation Buffer XP = @a[team=Yellow,limit=1] XP

#Buffer * BlueRankScore
scoreboard players operation Buffer XP *= @a[team=Blue,limit=1] RankScore

#Buffer / 600
scoreboard players operation Buffer XP /= 600 XP

#Add the Buffer score to the Blue player
scoreboard players operation @a[team=Blue,limit=1] XP += Buffer XP
scoreboard players operation NetBlue XP += Buffer XP

#Announce new Blue XP
execute as @a[team=Blue,limit=1] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" lost ","color":"red"},{"score":{"name":"NetBlue","objective":"XP"},"bold":true,"color":"dark_red"},{"text":", making their XP a total of: ","color":"red"},{"score":{"name":"@s","objective":"XP"},"bold":true,"color":"light_purple"}]

#Reset all scores (optimization)
scoreboard players reset 3 XP
scoreboard players reset 5 XP
scoreboard players reset XPLoss XP
scoreboard players reset 50 XP
scoreboard players reset XPLoss XP
scoreboard players reset CurrentBlue XP
scoreboard players reset CurrentYellow XP
scoreboard players reset RankResult XP
scoreboard players reset LossXP XP
scoreboard players reset 600 XP
scoreboard players reset Buffer XP
scoreboard players reset NetBlue XP
scoreboard players reset NetYellow XP