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
tag @e[x=0,type=marker,tag=rng2,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngBull] as @e[x=0,type=item] if items entity @s contents skeleton_horse_spawn_egg run function rr_powerups:items/deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngHyper] as @e[x=0,type=item] if items entity @s contents turtle_spawn_egg run function rr_powerups:items/deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[x=0,type=item] if items entity @s contents lingering_potion[custom_data~{lavasplash:1b}] run function rr_powerups:items/deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngSlapFish] as @e[x=0,type=item] if items entity @s contents cooked_salmon run function rr_powerups:items/deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngTotem] as @e[x=0,type=item] if items entity @s contents totem_of_undying run function rr_powerups:items/deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngTrident] as @e[x=0,type=item] if items entity @s contents trident run function rr_powerups:items/deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngBeeShield] as @e[x=0,type=item] if items entity @s contents honey_bottle run function rr_powerups:items/deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngDuplex] as @e[x=0,type=item] if items entity @s contents parrot_spawn_egg run function rr_powerups:items/deduct
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doStacking] as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @e[x=0,type=item] if items entity @s contents magma_cube_spawn_egg run function rr_powerups:items/deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBull] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function items:missile/special/givebull
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBull] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function items:missile/special/givebull
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngElytra] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] at @s run function rr_powerups:items/powerup/giveelytra
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngElytra] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] at @s run function rr_powerups:items/powerup/giveelytra
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHyper] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function items:missile/special/givehyper
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHyper] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function items:missile/special/givehyper
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngInfinity] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/powerup/giveinfinity
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngInfinity] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/powerup/giveinfinity
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/powerup/givelavasplash
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/powerup/givelavasplash
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlapFish] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/powerup/giveslapfish
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlapFish] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/powerup/giveslapfish
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngTotem] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/powerup/givetotem
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngTotem] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/powerup/givetotem
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngTrident] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/powerup/givetrident
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngTrident] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/powerup/givetrident
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBeeShield] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function rr_powerups:items/powerup/givebeeshield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBeeShield] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function rr_powerups:items/powerup/givebeeshield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngDuplex] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function items:missile/special/giveduplex
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngDuplex] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function items:missile/special/giveduplex
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @e[x=0,type=marker,scores={capturePoint=1}] as @a[x=0,team=Blue] run function items:missile/special/givebroad
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @e[x=0,type=marker,scores={capturePoint=2}] as @a[x=0,team=Yellow] run function items:missile/special/givebroad

#item announcements
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBull] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Bullet","color":"blue","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBull] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Bullet","color":"gold","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngElytra] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Elytra","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngElytra] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Elytra","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHyper] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Hypersonic","color":"blue","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHyper] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Hypersonic","color":"gold","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngInfinity] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Infinity Sabers","color":"dark_purple","bold":true,"italic":true},{"text":" (Expires in 30 seconds)","color":"red","italic":true,"bold":false}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngInfinity] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Infinity Sabers","color":"dark_purple","bold":true,"italic":true},{"text":" (Expires in 30 seconds)","color":"red","italic":true,"bold":false}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Lava Splash","color":"blue","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLavaSplash] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Lava Splash","color":"gold","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlapFish] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlapFish] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngTotem] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Totem of Undying","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngTotem] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Totem of Undying","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngTrident] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Trident","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngTrident] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Trident","color":"dark_purple","bold":true,"italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBeeShield] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Stinging Shield","color":"blue","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBeeShield] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Stinging Shield","color":"gold","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngDuplex] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Duplex","color":"blue","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngDuplex] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Duplex","color":"gold","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @e[x=0,type=marker,scores={capturePoint=1}] run tellraw @a[x=0,team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Broadsword","color":"blue","italic":true}]
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @e[x=0,type=marker,scores={capturePoint=2}] run tellraw @a[x=0,team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Broadsword","color":"gold","italic":true}]

#hotbar full exceptions
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=rngInfinity] run tag @s add noHotbarWarn
execute if entity @e[x=0,type=marker,tag=rngSelected,tag=rngElytra] run tag @s add noHotbarWarn

kill @e[x=0,type=marker,tag=rng2]

execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] run scoreboard players add @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] CmdData 2
execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] at @s run playsound minecraft:entity.turtle.egg_crack master @a[x=0] ~ ~ ~ 0.4 2
execute unless entity @e[x=0,type=end_crystal,tag=PUCrystalPerma] as @e[x=0,type=marker,tag=captureMiddle,tag=!BrokenPlatform] at @s run playsound minecraft:block.amethyst_block.step master @a[x=0] ~ ~ ~ 1 1.4