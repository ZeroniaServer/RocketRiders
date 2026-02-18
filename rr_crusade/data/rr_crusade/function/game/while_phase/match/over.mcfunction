bossbar set rr_crusade:blue players none
bossbar set rr_crusade:yellow players none

execute if score @s endtimer matches 101.. run kill @e[x=0,type=marker,tag=airDetectBlue,limit=1]
execute if score @s endtimer matches 101.. run kill @e[x=0,type=marker,tag=airDetectYellow,limit=1]
