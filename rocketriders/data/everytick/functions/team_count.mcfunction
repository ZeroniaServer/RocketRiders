##Utility function for counting players on teams
execute store result score @s yellowsCount if entity @a[predicate=custom:indimension,team=Yellow]
execute store result score @s bluesCount if entity @a[predicate=custom:indimension,team=Blue]