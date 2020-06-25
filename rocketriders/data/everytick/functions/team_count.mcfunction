##Utility function for counting players on teams
execute store result score @s yellowsCount if entity @a[team=Yellow]
execute store result score @s bluesCount if entity @e[team=Blue]