##Gravitational Shootout achievement
##Utilizes an advancement for detecting when a player shoots another player in midair
execute as @a[scores={gravShot=5..}] unless entity @s[team=!Yellow,team=!Blue] run advancement grant @s only achievements:rr_challenges/gravitational_shootout