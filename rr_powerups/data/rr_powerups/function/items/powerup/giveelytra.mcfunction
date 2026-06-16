execute if predicate game:game_rules/show_debug_logs/on if predicate items:can_activate_elytra run function custom:log {message:["(rr_powerups:items/powerup/giveelytra) Gave Elytra to ",{selector:"@s"}]}
execute if predicate game:game_rules/show_debug_logs/on unless predicate items:can_activate_elytra run function custom:log {message:["(rr_powerups:items/powerup/giveelytra) Failed to give Elytra to ",{selector:"@s"}]}
execute if predicate items:can_activate_elytra run function items:effects/elytra/set_normal

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenElytra
