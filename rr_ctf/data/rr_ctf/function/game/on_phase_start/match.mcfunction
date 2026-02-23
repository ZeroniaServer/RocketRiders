summon marker 38 63 -66 {Tags:["airDetectBlue"]}
summon marker 38 63 66 {Tags:["airDetectYellow"]}

execute unless predicate game:gamemode_components/red_for_blue run bossbar set rr_ctf:fy1 color blue
execute unless predicate game:gamemode_components/red_for_blue run bossbar set rr_ctf:fy2 color blue
execute if predicate game:gamemode_components/red_for_blue run bossbar set rr_ctf:fy1 color red
execute if predicate game:gamemode_components/red_for_blue run bossbar set rr_ctf:fy2 color red
