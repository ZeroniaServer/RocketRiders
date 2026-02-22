bossbar set rr_chase:lead name {color:"red",text:"No one is in the lead!"}
bossbar set rr_chase:lead value 0
bossbar set rr_chase:lead players @a[x=0,predicate=!custom:team/lobby]
