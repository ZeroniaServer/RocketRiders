loot give @s loot items:item/shooting_saber
title @s[predicate=!items:effects/infinity_saber/on,predicate=!items:effects/multishot_saber/on] actionbar {"text":"Shooting Saber obtained.","color":"light_purple"}
title @s[predicate=!items:effects/infinity_saber/on,predicate=items:effects/multishot_saber/on] actionbar {"text":"Multishot Saber obtained.","color":"light_purple"}
title @s[predicate=items:effects/infinity_saber/on,predicate=!items:effects/multishot_saber/on] actionbar {"text":"Infinity Saber obtained.","color":"light_purple"}
title @s[predicate=items:effects/infinity_saber/on,predicate=items:effects/multishot_saber/on] actionbar {"text":"Multishot-Infinity Saber obtained.","color":"light_purple"}
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2