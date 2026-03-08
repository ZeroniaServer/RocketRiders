summon marker 38 63 -66 {Tags:["airDetectBlue"]}
summon marker 38 63 66 {Tags:["airDetectYellow"]}

execute unless predicate game:match_components/red_for_blue run bossbar set rr_ctf:fy1 color blue
execute unless predicate game:match_components/red_for_blue run bossbar set rr_ctf:fy2 color blue
execute if predicate game:match_components/red_for_blue run bossbar set rr_ctf:fy1 color red
execute if predicate game:match_components/red_for_blue run bossbar set rr_ctf:fy2 color red

execute unless predicate game:match_components/green_for_yellow run bossbar set rr_ctf:fb1 color yellow
execute unless predicate game:match_components/green_for_yellow run bossbar set rr_ctf:fb2 color yellow
execute if predicate game:match_components/green_for_yellow run bossbar set rr_ctf:fb1 color green
execute if predicate game:match_components/green_for_yellow run bossbar set rr_ctf:fb2 color green
