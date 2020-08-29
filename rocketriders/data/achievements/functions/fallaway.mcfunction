##So Close, yet so Fall Away achievement
##Utilizes a fall distance check in the gain function

execute as @a[team=Blue,scores={FallDistance=1..}] at @s if entity @s[x=-10,dx=45,y=38,dy=23,z=73,dz=2] run tag @s add probGonnaDie
execute as @a[team=Yellow,scores={FallDistance=1..}] at @s if entity @s[x=-10,dx=45,y=38,dy=23,z=-75,dz=2] run tag @s add probGonnaDie
execute as @a[tag=probGonnaDie] if score @s PlayerDeaths < @s deaths run advancement grant @s only achievements:rr_challenges/fall_away
execute as @a[team=Blue] unless entity @s[x=-10,dx=45,y=38,dy=23,z=73,dz=2] run tag @s remove probGonnaDie
execute as @a[team=Yellow] unless entity @s[x=-10,dx=45,y=38,dy=23,z=-75,dz=2] run tag @s remove probGonnaDie