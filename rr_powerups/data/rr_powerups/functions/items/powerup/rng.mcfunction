execute if entity @s[tag=!givenBull] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBull","rng2"]}
execute if entity @s[tag=!givenElytra] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngElytra","rng2"]}
execute if entity @s[tag=!givenHyper] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngHyper","rng2"]}
execute if entity @s[tag=!givenInfinity] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngInfinity","rng2"]}
execute if entity @s[tag=!givenLavaSplash] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngLavaSplash","rng2"]}
execute if entity @s[tag=!givenFish] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngSlapFish","rng2"]}
execute if entity @s[tag=!givenTotem] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngTotem","rng2"]}
execute if entity @s[tag=!givenTrident] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngTrident","rng2"]}
execute if entity @s[tag=!givenBee] run summon area_effect_cloud 0 0 0 {Radius:0f,RadiusPerTick:-1f,Duration:1,Tags:["rngBeeShield","rng2"]}
tag @e[tag=rng2,sort=random,limit=1] add rngSelected
execute as @e[tag=rngSelected,tag=rngBull] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givebull
execute as @e[tag=rngSelected,tag=rngBull] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givebull
execute as @e[tag=rngSelected,tag=rngElytra] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/giveelytra
execute as @e[tag=rngSelected,tag=rngElytra] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/giveelytra
execute as @e[tag=rngSelected,tag=rngHyper] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givehyper
execute as @e[tag=rngSelected,tag=rngHyper] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givehyper
execute as @e[tag=rngSelected,tag=rngInfinity] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/giveinfinity
execute as @e[tag=rngSelected,tag=rngInfinity] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/giveinfinity
execute as @e[tag=rngSelected,tag=rngLavaSplash] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givelavasplash
execute as @e[tag=rngSelected,tag=rngLavaSplash] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givelavasplash
execute as @e[tag=rngSelected,tag=rngSlapFish] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/giveslapfish
execute as @e[tag=rngSelected,tag=rngSlapFish] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/giveslapfish
execute as @e[tag=rngSelected,tag=rngTotem] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givetotem
execute as @e[tag=rngSelected,tag=rngTotem] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givetotem
execute as @e[tag=rngSelected,tag=rngTrident] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givetrident
execute as @e[tag=rngSelected,tag=rngTrident] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givetrident
execute as @e[tag=rngSelected,tag=rngBeeShield] as @e[scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givebeeshield
execute as @e[tag=rngSelected,tag=rngBeeShield] as @e[scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givebeeshield

#item announcements
execute as @e[tag=rngSelected,tag=rngBull] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"[Superheavy] ","color":"dark_purple","bold":"true","italic":"true"},{"text":"Bullet","color":"blue","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngBull] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"[Superheavy] ","color":"dark_purple","bold":"true","italic":"true"},{"text":"Bullet","color":"gold","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngElytra] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Elytra","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngElytra] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Elytra","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngHyper] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"[Superspeed] ","color":"dark_purple","bold":"true","italic":"true"},{"text":"Hypersonic","color":"blue","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngHyper] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"[Superspeed] ","color":"dark_purple","bold":"true","italic":"true"},{"text":"Hypersonic","color":"gold","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngInfinity] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Infinity Sabers","color":"dark_purple","bold":"true","italic":"true"},{"text":" (Expires upon death)","color":"gray","italic":"true","bold":"false"}]
execute as @e[tag=rngSelected,tag=rngInfinity] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Infinity Sabers","color":"dark_purple","bold":"true","italic":"true"},{"text":" (Expires upon death)","color":"gray","italic":"true","bold":"false"}]
execute as @e[tag=rngSelected,tag=rngLavaSplash] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"[Utility] ","color":"dark_purple","bold":"true","italic":"true"},{"text":"Lava Splash","color":"blue","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngLavaSplash] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"[Utility] ","color":"dark_purple","bold":"true","italic":"true"},{"text":"Lava Splash","color":"gold","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngSlapFish] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Slap Fish","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngSlapFish] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Slap Fish","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngTotem] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Totem of Undying","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngTotem] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Totem of Undying","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngTrident] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"Trident","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngTrident] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"Trident","color":"dark_purple","bold":"true","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngBeeShield] as @e[scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue received: ","color":"aqua","bold":"true"},{"text":"[Utility] ","color":"dark_purple","bold":"true","italic":"true"},{"text":"Bee Shield","color":"blue","italic":"true"}]
execute as @e[tag=rngSelected,tag=rngBeeShield] as @e[scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow received: ","color":"yellow","bold":"true"},{"text":"[Utility] ","color":"dark_purple","bold":"true","italic":"true"},{"text":"Bee Shield","color":"gold","italic":"true"}]