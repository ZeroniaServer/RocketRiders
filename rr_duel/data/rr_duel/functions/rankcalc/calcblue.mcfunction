#Basic rankpoint formula:
#RankResult = 80+losersXP*WinnersRankScore/50
#Winner gains that amount
#Loser loses RankResult*LosersRankScore/10
#Loser gains WinnersXP*LosersRankScore/600

#set the values for later maths.
scoreboard players set $10 XP 10
scoreboard players set $50 XP 50
scoreboard players set $600 XP 600
scoreboard players set $1300 XP 1300
scoreboard players set $XPLoss XP 0
scoreboard players set $Buffer XP 0
scoreboard players set $NetBlue XP 0
scoreboard players set $NetYellow XP 0

#Rank change detect part 1
function rr_duel:rankcalc/rankchange1

##GAIN
#Take current XP value of blue and yellow player.
scoreboard players operation $CurrentBlue XP = @a[team=Blue,limit=1] XP
scoreboard players operation $CurrentYellow XP = @a[team=Yellow,limit=1] XP

#Set rankresult to 80
scoreboard players set $RankResult XP 80

#CurrentYellow / 50
scoreboard players operation $CurrentYellow XP /= $50 XP

#CurrentYellow * YellowRankScore
execute if entity @a[team=Blue,limit=1] run scoreboard players operation $CurrentYellow XP *= @a[team=Blue,limit=1] RankScore

#RankResult+CurrentYellow = new RankResult
scoreboard players operation $RankResult XP += $CurrentYellow XP

#Add the RankResult scores to the Blue player
scoreboard players operation @a[team=Blue,limit=1] XP += $RankResult XP
scoreboard players operation $NetBlue XP += $RankResult XP

#Adjust Blue XP to below 1301
execute if entity @a[team=Blue,scores={XP=1301..},limit=1] run scoreboard players operation $DiffBlue XP = @a[team=Blue,limit=1,scores={XP=1301..}] XP
execute if entity @a[team=Blue,scores={XP=1301..},limit=1] run scoreboard players operation $DiffBlue XP -= $1300 XP
execute if entity @a[team=Blue,scores={XP=1301..},limit=1] run scoreboard players operation $NetBlue XP -= $DiffBlue XP
scoreboard players set @a[team=Blue,scores={XP=1301..},limit=1] XP 1300

#Announce new Blue XP
execute as @a[team=Blue,limit=1] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" gained ","color":"green"},{"score":{"name":"$NetBlue","objective":"XP"},"bold":true,"color":"dark_green"},{"text":", making their XP a total of: ","color":"green"},{"score":{"name":"@s","objective":"XP"},"bold":true,"color":"light_purple"}]

##LOSS
#Set LossXP to RankResult
scoreboard players operation $LossXP XP = $RankResult XP

#LossXP * YellowRankScore
execute if entity @a[team=Yellow,limit=1] run scoreboard players operation $LossXP XP *= @a[team=Yellow,limit=1] RankScore

#LossXP / 10
scoreboard players operation $LossXP XP /= $10 XP

#Subtract the LossXP score from the Yellow player
scoreboard players operation @a[team=Yellow,limit=1] XP -= $LossXP XP
scoreboard players operation $NetYellow XP += $LossXP XP

#Set Buffer to current Blue XP
scoreboard players operation $Buffer XP = @a[team=Blue,limit=1] XP

#Buffer * YellowRankScore
scoreboard players operation $Buffer XP *= @a[team=Yellow,limit=1] RankScore

#Buffer / 600
scoreboard players operation $Buffer XP /= $600 XP

#Add the Buffer score to the Yellow player
scoreboard players operation @a[team=Yellow,limit=1] XP += $Buffer XP
scoreboard players operation $NetYellow XP -= $Buffer XP

#Adjust Yellow XP to above -1
execute if entity @a[team=Yellow,scores={XP=..-1},limit=1] run scoreboard players operation $NetYellow XP += @a[team=Yellow,limit=1] XP
scoreboard players set @a[team=Yellow,scores={XP=..-1},limit=1] XP 0

#Announce new Yellow XP
execute as @a[team=Yellow,limit=1] run tellraw @a ["",{"selector":"@s","color":"red"},{"text":" lost ","color":"red"},{"score":{"name":"$NetYellow","objective":"XP"},"bold":true,"color":"dark_red"},{"text":", making their XP a total of: ","color":"red"},{"score":{"name":"@s","objective":"XP"},"bold":true,"color":"light_purple"}]

#Rank change detect part 2
function rr_duel:rankcalc/rankchange2

#Reset all scores (optimization)
scoreboard players reset $10 XP
scoreboard players reset $50 XP
scoreboard players reset $600 XP
scoreboard players reset $1300 XP
scoreboard players reset $XPLoss XP
scoreboard players reset $CurrentBlue XP
scoreboard players reset $CurrentYellow XP
scoreboard players reset $RankResult XP
scoreboard players reset $LossXP XP
scoreboard players reset $Buffer XP
scoreboard players reset $NetBlue XP
scoreboard players reset $NetYellow XP
scoreboard players reset $DiffBlue XP