execute positioned as @e[x=0,type=block_display,tag=checkered_flag.flag] run setblock ~ ~ ~ air

#tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.pole_1] ~ ~ ~
#tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.pole_2] ~ ~1 ~
#tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.pole_3] ~ ~2 ~
#tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.pole_4] ~ ~3 ~
#tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.pole_5] ~ ~4 ~
#tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.pole_6] ~ ~5 ~
#tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.pole_7] ~ ~6 ~
#tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.flag_0] ~ ~7 ~
tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.flag_1] ~-1 ~6 ~-1
tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.flag_2] ~-1 ~7 ~-1
tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.flag_3] ~-2 ~6 ~
tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.flag_4] ~-2 ~7 ~
tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.flag_5] ~-3 ~6 ~
tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.flag_6] ~-3 ~7 ~
tp @e[limit=1,x=0,type=block_display,tag=checkered_flag.flag_7] ~-4 ~6 ~

execute positioned as @e[x=0,type=block_display,tag=checkered_flag.flag] run setblock ~ ~ ~ barrier
