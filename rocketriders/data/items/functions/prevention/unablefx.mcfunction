##Detects the player who likely placed the prevented missile

#UUID match
execute store result score $missile playerUUID run data get entity @s data.UUID[0]

#Auxiliary
execute as @s[tag=BlueAux,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackAux
execute as @s[tag=YellowAux,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackAux
tag @a[tag=BackAux] add MissiMSG

#TomaTwo
execute as @s[tag=BlueToma,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackToma
execute as @s[tag=YellowToma,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackToma
tag @a[tag=BackToma] add MissiMSG

#Chronullifier
execute as @s[tag=BlueNull,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackNull
execute as @s[tag=YellowNull,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackNull
tag @a[tag=BackNull] add MissiMSG

#Warhead
execute as @s[tag=BlueWar,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackWar
execute as @s[tag=YellowWar,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackWar
tag @a[tag=BackWar] add MissiMSG

#Thunderbolt
execute as @s[tag=BlueBolt,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBolt
execute as @s[tag=YellowBolt,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBolt
tag @a[tag=BackBolt] add MissiMSG

#Hurricane
execute as @s[tag=BlueHur,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackHur
execute as @s[tag=YellowHur,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackHur
tag @a[tag=BackHur] add MissiMSG

#Elder Guardian
execute as @s[tag=BlueGuard,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackGuard
execute as @s[tag=YellowGuard,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackGuard
tag @a[tag=BackGuard] add MissiMSG

#A.N.T.
execute as @s[tag=BlueAnt,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackAnt
execute as @s[tag=YellowAnt,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackAnt
tag @a[tag=BackAnt] add MissiMSG

#Blade
execute as @s[tag=BlueBlade,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBlade
execute as @s[tag=YellowBlade,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBlade
tag @a[tag=BackBlade] add MissiMSG

#Rifter
execute as @s[tag=BlueRift,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackRift
execute as @s[tag=YellowRift,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackRift
tag @a[tag=BackRift] add MissiMSG

#Juggerbuster
execute as @s[tag=BlueJug,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackJug
execute as @s[tag=YellowJug,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackJug
tag @a[tag=BackJug] add MissiMSG

#Slasher
execute as @s[tag=BlueSlash,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackSlash
execute as @s[tag=YellowSlash,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackSlash
tag @a[tag=BackSlash] add MissiMSG

#Catapult
execute as @s[tag=BlueCata,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackCata
execute as @s[tag=YellowCata,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackCata
tag @a[tag=BackCata] add MissiMSG

#Citadel
execute as @s[tag=BlueCitadel,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackCitadel
execute as @s[tag=YellowCitadel,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackCitadel
tag @a[tag=BackCitadel] add MissiMSG

#Gemini
execute as @s[tag=BlueGemi,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackGemi
execute as @s[tag=YellowGemi,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackGemi
tag @a[tag=BackGemi] add MissiMSG

#Lifter
execute as @s[tag=BlueLift,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackLift
execute as @s[tag=YellowLift,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackLift
tag @a[tag=BackLift] add MissiMSG

#Hypersonic
execute as @s[tag=BlueHyper,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackHyper
execute as @s[tag=YellowHyper,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackHyper
tag @a[tag=BackHyper] add MissiMSG

#Bullet
execute as @s[tag=BlueBull,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBull
execute as @s[tag=YellowBull,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBull
tag @a[tag=BackBull] add MissiMSG

#Duplex
execute as @s[tag=BlueDuplex,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackDuplex
execute as @s[tag=YellowDuplex,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackDuplex
tag @a[tag=BackDuplex] add MissiMSG

#Broadsword
execute as @s[tag=BlueBroad,tag=!surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBroad
execute as @s[tag=YellowBroad,tag=!surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBroad
tag @a[tag=BackBroad] add MissiMSG

#Surprise Egg
execute as @s[tag=bluemissile,tag=surp] as @a[team=Blue,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackSurprise
execute as @s[tag=yellowmissile,tag=surp] as @a[team=Yellow,sort=nearest,limit=1,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackSurprise
tag @a[tag=BackSurprise] add MissiMSG

#Special cases
execute as @s[tag=yellowmissile,tag=void] at @s if entity @a[team=Yellow,sort=nearest,limit=1,distance=..12,tag=MissiMSG] run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12,tag=MissiMSG] add voidMSG
execute as @s[tag=bluemissile,tag=void] at @s if entity @a[team=Blue,sort=nearest,limit=1,distance=..12,tag=MissiMSG] run tag @a[team=Blue,sort=nearest,limit=1,distance=..12,tag=MissiMSG] add voidMSG
execute as @s[tag=yellowmissile,tag=roof] at @s if entity @a[team=Yellow,sort=nearest,limit=1,distance=..12,tag=MissiMSG] run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12,tag=MissiMSG] add roofMSG
execute as @s[tag=bluemissile,tag=roof] at @s if entity @a[team=Blue,sort=nearest,limit=1,distance=..12,tag=MissiMSG] run tag @a[team=Blue,sort=nearest,limit=1,distance=..12,tag=MissiMSG] add roofMSG
execute as @s[tag=yellowmissile,tag=antigrief] at @s if entity @a[team=Yellow,sort=nearest,limit=1,distance=..12,tag=MissiMSG] run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12,tag=MissiMSG] add antigriefMSG
execute as @s[tag=bluemissile,tag=antigrief] at @s if entity @a[team=Blue,sort=nearest,limit=1,distance=..12,tag=MissiMSG] run tag @a[team=Blue,sort=nearest,limit=1,distance=..12,tag=MissiMSG] add antigriefMSG
execute as @s[tag=yellowmissile,tag=spawnpoint] at @s if entity @a[team=Yellow,sort=nearest,limit=1,distance=..12,tag=MissiMSG] run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12,tag=MissiMSG] add spawnpointMSG
execute as @s[tag=bluemissile,tag=spawnpoint] at @s if entity @a[team=Blue,sort=nearest,limit=1,distance=..12,tag=MissiMSG] run tag @a[team=Blue,sort=nearest,limit=1,distance=..12,tag=MissiMSG] add spawnpointMSG

#All missiles
tp @s ~ ~-300 ~
kill @s
scoreboard players reset $missile playerUUID