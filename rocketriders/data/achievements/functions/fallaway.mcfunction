#fall away
execute as @a[team=Blue] at @s if entity @s[z=74,dz=0] unless entity @s[nbt={FallDistance:0.0f}] store result score @s FallDistance run data get entity @s FallDistance 50
execute as @a[team=Yellow] at @s if entity @s[z=-74,dz=0] unless entity @s[nbt={FallDistance:0.0f}] store result score @s FallDistance run data get entity @s FallDistance 50
execute as @a[team=Blue,scores={FallDistance=1..}] at @s if entity @s[z=74,dz=0,y=36,dy=24] if score @s PlayerDeaths < @s deaths run advancement grant @s only achievements:rr_challenges/fall_away
execute as @a[team=Yellow,scores={FallDistance=1..}] at @s if entity @s[z=-74,dz=0,y=36,dy=24] if score @s PlayerDeaths < @s deaths run advancement grant @s only achievements:rr_challenges/fall_away
execute as @a[team=Blue] at @s unless entity @s[z=74,dz=0] run scoreboard players reset @s FallDistance
execute as @a[team=Yellow] at @s unless entity @s[z=-74,dz=0] run scoreboard players reset @s FallDistance