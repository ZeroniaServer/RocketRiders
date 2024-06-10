##Utility function for counting players on teams
execute store result score @s yellowsCount if entity @a[x=0,team=Yellow]
execute store result score @s bluesCount if entity @a[x=0,team=Blue]