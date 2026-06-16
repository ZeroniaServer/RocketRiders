function items:give_count/shooting_saber {count:1}

execute if predicate items:effects/infinity_saber/on if predicate items:effects/multishot_saber/on run return run title @s actionbar {color:"light_purple",text:"Multishot-Infinity Saber obtained"}
execute if predicate items:effects/multishot_saber/on run title @s actionbar {color:"light_purple",text:"Multishot Saber obtained"}
execute if predicate items:effects/infinity_saber/on run title @s actionbar {color:"light_purple",text:"Infinity Saber obtained"}
title @s actionbar {color:"light_purple",text:"Shooting Saber obtained"}
