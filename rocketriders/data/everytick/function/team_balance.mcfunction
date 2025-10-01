##########################################
## TEAM BALANCE: Ensures that team size ##
## differences are minimal for fairness ##
##########################################

##Identifies which team is larger to calculate the team difference
function everytick:team_count

##Checking whether teams are full
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] unless entity @s[tag=BlueCapOverride] run tag @s remove BlueFull
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] unless entity @s[tag=BlueCapOverride] if score $blue_team_count global >= @s PlayerCap run tag @s add BlueFull
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] unless entity @s[tag=YellowCapOverride] run tag @s remove YellowFull
execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] unless entity @s[tag=YellowCapOverride] if score $yellow_team_count global >= @s PlayerCap run tag @s add YellowFull
