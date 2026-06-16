execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_powerups:items/powerup/giveinfinity) Gave Infinity Saber to ",{selector:"@s"}]}
function items:effects/infinity_saber/set_30_seconds
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenInfinity
