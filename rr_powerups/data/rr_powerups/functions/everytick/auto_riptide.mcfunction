execute as @s[predicate=rr_powerups:loyalty_main] run item modify entity @s weapon.mainhand rr_powerups:riptide
execute as @s[predicate=rr_powerups:riptide_main] run item modify entity @s weapon.mainhand rr_powerups:loyalty
execute as @s[predicate=rr_powerups:loyalty_offhand] run item modify entity @s weapon.offhand rr_powerups:riptide
execute as @s[predicate=rr_powerups:riptide_offhand] run item modify entity @s weapon.offhand rr_powerups:loyalty