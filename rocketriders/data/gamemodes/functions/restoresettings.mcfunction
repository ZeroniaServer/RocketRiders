#restore previous settings
#ONLY RUN WHILE CUSTOMIZER IS OPEN!!!
data modify entity @s Tags set from storage rocketriders:storage Tags
data modify storage rocketriders:storage Tags set value []

scoreboard players operation @s TopDeco = $TORAGE TopDeco
scoreboard players operation @s TopCorner = $TORAGE TopCorner
scoreboard players operation @s MiddleDeco = $TORAGE MiddleDeco
scoreboard players operation @s BottomDeco = $TORAGE BottomDeco
scoreboard players operation @s PortalDeco = $TORAGE PortalDeco

scoreboard players operation @s MaxItemSec = $TORAGE MaxItemSec