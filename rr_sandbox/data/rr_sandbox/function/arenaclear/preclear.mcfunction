#ICBM reset (Swap/Crusade)
kill @e[x=0,type=egg,tag=ICBM]
kill @e[x=0,type=marker,tag=ICBMtracker]
kill @e[x=0,type=chicken]
scoreboard players reset $highest ICBMID

#Powerups
kill @e[x=0,type=marker,tag=animBshield]
kill @e[x=0,type=bee]
kill @e[x=0,type=trident]

#Crusade
kill @e[x=0,type=small_fireball]
kill @e[x=0,type=wind_charge]