#team count
execute store result score @s yellowsCount if entity @e[team=Yellow]
execute store result score @s bluesCount if entity @e[team=Blue]