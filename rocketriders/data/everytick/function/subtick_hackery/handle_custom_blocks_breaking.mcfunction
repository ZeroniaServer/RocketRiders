execute unless predicate game:phase/match run return 0
execute if predicate game:phase/match/pause run return 0

execute if predicate game:match_components/has_chase_blocks as @e[x=0,type=marker,tag=ChaseBlock,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass run tag @s add KillChaseblock
execute if predicate game:match_components/has_chase_blocks as @e[x=0,type=marker,tag=ChaseBlock,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass run tag @s add KillChaseblock2
execute if predicate game:match_components/has_chase_blocks as @e[x=0,type=marker,tag=ChaseBlock,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass run tag @s add KillChaseblock3
execute if predicate game:match_components/has_chase_blocks as @e[x=0,type=marker,tag=ChaseBlock,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass run tag @s add KillChaseblock4

execute if predicate game:match_components/has_flags if score FY1: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run setblock ~ ~1 ~ purple_stained_glass
execute if predicate game:match_components/has_flags if score FY1: FlagScore matches ..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run setblock ~ ~1 ~ white_stained_glass
execute if predicate game:match_components/has_flags if score FY2: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run setblock ~ ~1 ~ purple_stained_glass
execute if predicate game:match_components/has_flags if score FY2: FlagScore matches ..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run setblock ~ ~1 ~ white_stained_glass
execute if predicate game:match_components/has_flags if score FB1: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run setblock ~ ~1 ~ purple_stained_glass
execute if predicate game:match_components/has_flags if score FB1: FlagScore matches ..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run setblock ~ ~1 ~ white_stained_glass
execute if predicate game:match_components/has_flags if score FB2: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run setblock ~ ~1 ~ purple_stained_glass
execute if predicate game:match_components/has_flags if score FB2: FlagScore matches ..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run setblock ~ ~1 ~ white_stained_glass
