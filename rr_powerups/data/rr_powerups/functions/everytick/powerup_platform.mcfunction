#more efficient method but doesn't support moving as well (needs individual aecs)
execute as @e[tag=captureMiddle,scores={capturePoint=0}] as @e[tag=PlatBlock] at @s unless blocks ~ ~ ~ ~ ~ ~ ~38 ~179 ~54 all run clone ~38 ~179 ~54 ~38 ~179 ~54 ~ ~ ~
execute as @e[tag=captureMiddle,scores={capturePoint=1}] as @e[tag=PlatBlock] at @s unless blocks ~ ~ ~ ~ ~ ~ ~52 ~179 ~54 all run clone ~52 ~179 ~54 ~52 ~179 ~54 ~ ~ ~
execute as @e[tag=captureMiddle,scores={capturePoint=2}] as @e[tag=PlatBlock] at @s unless blocks ~ ~ ~ ~ ~ ~ ~24 ~179 ~54 all run clone ~24 ~179 ~54 ~24 ~179 ~54 ~ ~ ~

#less efficient method but supports moving easier (doesn't need invididual aecs) --unupdated
#execute as @e[tag=captureMiddle,scores={capturePoint=0}] at @s unless blocks ~-6 ~-1 ~-6 ~6 ~-1 ~6 39 232 48 all run clone 39 232 48 51 232 60 ~-6 ~-1 ~-6 masked normal
#execute as @e[tag=captureMiddle,scores={capturePoint=1}] at @s unless blocks ~-6 ~-1 ~-6 ~6 ~-1 ~6 53 232 48 all run clone 53 232 48 65 232 60 ~-6 ~-1 ~-6 masked normal
#execute as @e[tag=captureMiddle,scores={capturePoint=2}] at @s unless blocks ~-6 ~-1 ~-6 ~6 ~-1 ~6 25 232 48 all run clone 25 232 48 37 232 60 ~-6 ~-1 ~-6 masked normal