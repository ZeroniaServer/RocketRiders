#traveler
execute as @a[team=Yellow] at @s if entity @s[z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,tag=beenOnYellow] at @s if entity @s[z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue] at @s if entity @s[z=46,dz=28] run tag @s add beenOnYellow
execute as @a[team=Yellow,tag=beenOnBlue] at @s if entity @s[z=46,dz=28] run tag @s add beenOnYellow
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s remove beenOnBlue
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s remove beenOnYellow
execute as @a unless entity @s[team=!Yellow,team=!Blue] run scoreboard players operation @s PlayerDeaths = @s deaths
execute as @a[tag=beenOnBlue,tag=beenOnYellow] run advancement grant @s only achievements:rr_challenges/traveler