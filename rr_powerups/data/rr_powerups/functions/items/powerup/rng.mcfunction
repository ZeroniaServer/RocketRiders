summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBarricade","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngElytra","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngFire","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHyper","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngLavaSplash","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngPickaxe","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSmokeBomb","rng2"]}
summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngTrident","rng2"]}
tag @e[tag=rng2,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngBarricade] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givebarricade
execute as @e[tag=rngSelected,tag=rngBarricade] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givebarricade
execute as @e[tag=rngSelected,tag=rngElytra] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/giveelytra
execute as @e[tag=rngSelected,tag=rngElytra] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/giveelytra
execute as @e[tag=rngSelected,tag=rngFire] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givefire
execute as @e[tag=rngSelected,tag=rngFire] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givefire
execute as @e[tag=rngSelected,tag=rngHyper] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givehyper
execute as @e[tag=rngSelected,tag=rngHyper] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givehyper
execute as @e[tag=rngSelected,tag=rngLavaSplash] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givelavasplash
execute as @e[tag=rngSelected,tag=rngLavaSplash] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givelavasplash
execute as @e[tag=rngSelected,tag=rngPickaxe] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givepickaxe
execute as @e[tag=rngSelected,tag=rngPickaxe] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givepickaxe
execute as @e[tag=rngSelected,tag=rngSmokeBomb] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givesmokebomb
execute as @e[tag=rngSelected,tag=rngSmokeBomb] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givesmokebomb
execute as @e[tag=rngSelected,tag=rngTrident] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givetrident
execute as @e[tag=rngSelected,tag=rngTrident] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givetrident
