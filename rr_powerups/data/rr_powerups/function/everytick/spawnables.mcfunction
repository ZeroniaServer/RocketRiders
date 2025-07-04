#utility functions
execute if entity @e[limit=1,x=0,type=bee] run function rr_powerups:everytick/bees
execute if entity @e[limit=1,x=0,type=bee] run function rr_powerups:everytick/init_kill_bees

function rr_powerups:everytick/lava_splash