loot give @s loot items:misc/shooting_saber
title @s[predicate=!items:shooting_saber/infinity,predicate=!items:shooting_saber/multishot] actionbar {"text":"Shooting Saber obtained.","color":"light_purple"}
title @s[predicate=!items:shooting_saber/infinity,predicate=items:shooting_saber/multishot] actionbar {"text":"Multishot Saber obtained.","color":"light_purple"}
title @s[predicate=items:shooting_saber/infinity,predicate=!items:shooting_saber/multishot] actionbar {"text":"Infinity Saber obtained.","color":"light_purple"}
title @s[predicate=items:shooting_saber/infinity,predicate=items:shooting_saber/multishot] actionbar {"text":"Multishot-Infinity Saber obtained.","color":"light_purple"}
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2