##Utility function for counting players on teams
execute store result score $yellow_team_count global if entity @a[x=0,team=Yellow]
execute store result score $blue_team_count global if entity @a[x=0,team=Blue]
