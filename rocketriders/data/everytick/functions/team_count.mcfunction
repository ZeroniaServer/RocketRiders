#team count
execute store result score @s yellowsCount run execute if entity @e[team=Yellow]
execute store result score @s bluesCount run execute if entity @e[team=Blue]