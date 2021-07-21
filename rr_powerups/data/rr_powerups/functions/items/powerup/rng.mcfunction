execute if entity @s[tag=!givenBull] run summon marker 0 0 0 {Tags:["rngBull","rng2"]}
execute if entity @s[tag=!givenElytra] run summon marker 0 0 0 {Tags:["rngElytra","rng2"]}
execute if entity @s[tag=!givenHyper] run summon marker 0 0 0 {Tags:["rngHyper","rng2"]}
execute if entity @s[tag=!givenInfinity] run summon marker 0 0 0 {Tags:["rngInfinity","rng2"]}
execute if entity @s[tag=!givenLavaSplash] run summon marker 0 0 0 {Tags:["rngLavaSplash","rng2"]}
execute if entity @s[tag=!givenFish] run summon marker 0 0 0 {Tags:["rngSlapFish","rng2"]}
execute if entity @s[tag=!givenTotem] run summon marker 0 0 0 {Tags:["rngTotem","rng2"]}
execute if entity @s[tag=!givenTrident] run summon marker 0 0 0 {Tags:["rngTrident","rng2"]}
execute if entity @s[tag=!givenBee] run summon marker 0 0 0 {Tags:["rngBeeShield","rng2"]}
execute if entity @s[tag=!givenDuplex] run summon marker 0 0 0 {Tags:["rngDuplex","rng2"]}
execute if entity @s[tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","rng2"]}
tag @e[type=marker,tag=rng2,sort=random,limit=1] add rngSelected

#> 
execute as @e[type=marker,tag=rngSelected,tag=rngBull] as @e[type=item] if data entity @s {Item:{id:"minecraft:skeleton_spawn_egg"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngHyper] as @e[type=item] if data entity @s {Item:{id:"minecraft:turtle_spawn_egg"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[type=item] if data entity @s {Item:{id:"minecraft:lingering_potion"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngSlapFish] as @e[type=item] if data entity @s {Item:{id:"minecraft:cooked_salmon"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngTotem] as @e[type=item] if data entity @s {Item:{id:"minecraft:totem_of_undying"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngTrident] as @e[type=item] if data entity @s {Item:{id:"minecraft:trident"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngBeeShield] as @e[type=item] if data entity @s {Item:{id:"minecraft:honey_bottle"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngDuplex] as @e[type=item] if data entity @s {Item:{id:"minecraft:parrot_spawn_egg"}} run kill @s
execute as @e[type=marker,tag=rngSelected,tag=rngBroad] as @e[type=item] if data entity @s {Item:{id:"minecraft:magma_cube_spawn_egg"}} run kill @s

execute as @e[type=marker,tag=rngSelected,tag=rngBull] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function items:missile/special/givebull
execute as @e[type=marker,tag=rngSelected,tag=rngBull] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function items:missile/special/givebull
execute as @e[type=marker,tag=rngSelected,tag=rngElytra] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/giveelytra
execute as @e[type=marker,tag=rngSelected,tag=rngElytra] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/giveelytra
execute as @e[type=marker,tag=rngSelected,tag=rngHyper] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function items:missile/special/givehyper
execute as @e[type=marker,tag=rngSelected,tag=rngHyper] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function items:missile/special/givehyper
execute as @e[type=marker,tag=rngSelected,tag=rngInfinity] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/giveinfinity
execute as @e[type=marker,tag=rngSelected,tag=rngInfinity] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/giveinfinity
execute as @e[type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givelavasplash
execute as @e[type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givelavasplash
execute as @e[type=marker,tag=rngSelected,tag=rngSlapFish] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/giveslapfish
execute as @e[type=marker,tag=rngSelected,tag=rngSlapFish] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/giveslapfish
execute as @e[type=marker,tag=rngSelected,tag=rngTotem] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givetotem
execute as @e[type=marker,tag=rngSelected,tag=rngTotem] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givetotem
execute as @e[type=marker,tag=rngSelected,tag=rngTrident] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givetrident
execute as @e[type=marker,tag=rngSelected,tag=rngTrident] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givetrident
execute as @e[type=marker,tag=rngSelected,tag=rngBeeShield] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function rr_powerups:items/powerup/givebeeshield
execute as @e[type=marker,tag=rngSelected,tag=rngBeeShield] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function rr_powerups:items/powerup/givebeeshield
execute as @e[type=marker,tag=rngSelected,tag=rngDuplex] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function items:missile/special/giveduplex
execute as @e[type=marker,tag=rngSelected,tag=rngDuplex] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function items:missile/special/giveduplex
execute as @e[type=marker,tag=rngSelected,tag=rngBroad] as @e[type=marker,scores={capturePoint=1}] as @a[team=Blue] run function items:missile/special/givebroad
execute as @e[type=marker,tag=rngSelected,tag=rngBroad] as @e[type=marker,scores={capturePoint=2}] as @a[team=Yellow] run function items:missile/special/givebroad

#item announcements
execute as @e[type=marker,tag=rngSelected,tag=rngBull] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Bullet","color":"blue","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngBull] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Bullet","color":"gold","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngElytra] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Elytra","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngElytra] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Elytra","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngHyper] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Hypersonic","color":"blue","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngHyper] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Hypersonic","color":"gold","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngInfinity] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Infinity Sabers","color":"dark_purple","bold":true,"italic":true},{"text":" (Expires in 30 seconds)","color":"red","italic":true,"bold":false}]
execute as @e[type=marker,tag=rngSelected,tag=rngInfinity] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Infinity Sabers","color":"dark_purple","bold":true,"italic":true},{"text":" (Expires in 30 seconds)","color":"red","italic":true,"bold":false}]
execute as @e[type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Lava Splash","color":"blue","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Lava Splash","color":"gold","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngSlapFish] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngSlapFish] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngTotem] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Totem of Undying","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngTotem] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Totem of Undying","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngTrident] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Trident","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngTrident] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Trident","color":"dark_purple","bold":true,"italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngBeeShield] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Stinging Shield","color":"blue","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngBeeShield] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Stinging Shield","color":"gold","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngDuplex] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Duplex","color":"blue","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngDuplex] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Duplex","color":"gold","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngBroad] as @e[type=marker,scores={capturePoint=1}] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Broadsword","color":"blue","italic":true}]
execute as @e[type=marker,tag=rngSelected,tag=rngBroad] as @e[type=marker,scores={capturePoint=2}] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Broadsword","color":"gold","italic":true}]

#hotbar full exceptions
execute if entity @e[type=marker,tag=rngSelected,tag=rngInfinity] run tag @s add noHotbarWarn
execute if entity @e[type=marker,tag=rngSelected,tag=rngInfinity] run function rr_powerups:everytick/saberfix
execute if entity @e[type=marker,tag=rngSelected,tag=rngElytra] run tag @s add noHotbarWarn

kill @e[type=marker,tag=rng2]