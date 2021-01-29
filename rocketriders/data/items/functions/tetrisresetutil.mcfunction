##Resets tetris bag for utilities only

#Utility
tag @s remove givenCanopy
tag @s remove givenNova
tag @s remove givenObshield
tag @s remove givenSplash
tag @s remove givenVortex
tag @s remove givenArrows
tag @s remove givenArrowsTwice
tag @s remove givenFireball
tag @s remove givenFireballTwice
tag @s remove givenShield
tag @s remove givenShieldTwice
tag @s remove givenAllUtil

#Hotfix for Minute Mix giving duplicate arrows/fireballs/shields
execute as @s[tag=Minute] run tag @s add givenArrows
execute as @s[tag=Minute] run tag @s add givenFireball
execute as @s[tag=Minute] run tag @s add givenShield