#ICBM reset
kill @e[x=0,type=egg,tag=ICBM]
kill @e[x=0,type=marker,tag=ICBMtracker]
kill @e[x=0,type=chicken]
scoreboard players reset $highest ICBMID
kill @e[x=0,type=small_fireball]
kill @e[x=0,type=wind_charge]
kill @e[x=0,type=#custom:crystal,tag=CrusadeEntity,tag=!KitSelect]