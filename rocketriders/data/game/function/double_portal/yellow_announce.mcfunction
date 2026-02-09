title @a[x=0,predicate=custom:team/any_arena_team] title {text:"Yellow Portal Broken!",color:yellow}
title @a[x=0,predicate=custom:team/yellow] subtitle {text:"Protect your last portal!",color:red}
title @a[x=0,predicate=custom:team/blue] subtitle {text:"Destroy their last portal!",color:green}
title @a[x=0,predicate=custom:team/any_arena_team,predicate=!custom:team/any_playing_team] subtitle ""
execute as @a[x=0,predicate=custom:team/any_arena_team] at @s run stopsound @s
execute as @a[x=0,predicate=custom:team/any_arena_team,predicate=!custom:team/yellow] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 1
execute as @a[x=0,predicate=custom:team/yellow] run playsound minecraft:entity.wither.death master @s ~ ~ ~ 100 1
return 1