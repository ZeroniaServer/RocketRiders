scoreboard players set $team var -1
execute on origin store success score $team var if entity @s[team=!Blue]

tag @s remove BluePlat
tag @s remove YellowPlat
execute if score $team var matches 0 run tag @s add BluePlat
execute if score $team var matches 1 run tag @s add YellowPlat
