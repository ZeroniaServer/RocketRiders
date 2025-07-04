##Utility function for storing previous settings
##ONLY RUN WHILE CUSTOMIZER IS OPEN!!!

tag @s remove GameEnd
data modify storage rocketriders:storage Tags set from entity @s Tags
execute store result storage rocketriders:storage config.disable_cannoning byte 1 run scoreboard players get $disable_cannoning global

scoreboard players operation $TORAGE TopDeco = @s TopDeco
scoreboard players operation $TORAGE TopCorner = @s TopCorner
scoreboard players operation $TORAGE MiddleDeco = @s MiddleDeco
scoreboard players operation $TORAGE BottomDeco = @s BottomDeco
scoreboard players operation $TORAGE PortalDeco = @s PortalDeco

scoreboard players operation $TORAGE MaxItemSec = @s MaxItemSec
scoreboard players operation $TORAGE MaxItemTime = @s MaxItemTime