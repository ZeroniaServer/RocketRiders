##So Close, yet so Fall Away achievement
##Utilizes a fall distance check in the gain function
execute as @s[team=Blue,scores={FallDistance=1..}] at @s if entity @s[x=-10,dx=45,y=60,dy=2,z=73,dz=2] run tag @s add probGonnaDie
execute as @s[team=Yellow,scores={FallDistance=1..}] at @s if entity @s[x=-10,dx=45,y=60,dy=2,z=-75,dz=2] run tag @s add probGonnaDie
execute as @s[tag=probGonnaDie] if score @s PlayerDeaths < @s deaths run advancement grant @s only achievements:rr_challenges/fall_away
execute as @s[team=Blue] unless entity @s[x=-10,dx=45,y=60,dy=2,z=73,dz=2] run tag @s remove probGonnaDie
execute as @s[team=Yellow] unless entity @s[x=-10,dx=45,y=60,dy=2,z=-75,dz=2] run tag @s remove probGonnaDie