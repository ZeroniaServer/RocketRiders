##Detects the player who likely placed the prevented missile

#UUID match
execute store result score $missile playerUUID run data get entity @s data.UUID[0]

#Auxiliary
execute if entity @s[tag=BlueAux,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackAux
execute if entity @s[tag=YellowAux,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackAux
tag @a[tag=BackAux] add MissiMSG

#TomaTwo
execute if entity @s[tag=BlueToma,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackToma
execute if entity @s[tag=YellowToma,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackToma
tag @a[tag=BackToma] add MissiMSG

#Chronullifier
execute if entity @s[tag=BlueNull,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackNull
execute if entity @s[tag=YellowNull,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackNull
tag @a[tag=BackNull] add MissiMSG

#Warhead
execute if entity @s[tag=BlueWar,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackWar
execute if entity @s[tag=YellowWar,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackWar
tag @a[tag=BackWar] add MissiMSG

#Thunderbolt
execute if entity @s[tag=BlueBolt,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBolt
execute if entity @s[tag=YellowBolt,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBolt
tag @a[tag=BackBolt] add MissiMSG

#Hurricane
execute if entity @s[tag=BlueHur,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackHur
execute if entity @s[tag=YellowHur,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackHur
tag @a[tag=BackHur] add MissiMSG

#Elder Guardian
execute if entity @s[tag=BlueGuard,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackGuard
execute if entity @s[tag=YellowGuard,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackGuard
tag @a[tag=BackGuard] add MissiMSG

#A.N.T.
execute if entity @s[tag=BlueAnt,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackAnt
execute if entity @s[tag=YellowAnt,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackAnt
tag @a[tag=BackAnt] add MissiMSG

#Blade
execute if entity @s[tag=BlueBlade,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBlade
execute if entity @s[tag=YellowBlade,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBlade
tag @a[tag=BackBlade] add MissiMSG

#Rifter
execute if entity @s[tag=BlueRift,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackRift
execute if entity @s[tag=YellowRift,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackRift
tag @a[tag=BackRift] add MissiMSG

#Juggerbuster
execute if entity @s[tag=BlueJug,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackJug
execute if entity @s[tag=YellowJug,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackJug
tag @a[tag=BackJug] add MissiMSG

#Slasher
execute if entity @s[tag=BlueSlash,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackSlash
execute if entity @s[tag=YellowSlash,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackSlash
tag @a[tag=BackSlash] add MissiMSG

#Catapult
execute if entity @s[tag=BlueCata,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackCata
execute if entity @s[tag=YellowCata,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackCata
tag @a[tag=BackCata] add MissiMSG

#Citadel
execute if entity @s[tag=BlueCitadel,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackCitadel
execute if entity @s[tag=YellowCitadel,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackCitadel
tag @a[tag=BackCitadel] add MissiMSG

#Gemini
execute if entity @s[tag=BlueGemi,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackGemi
execute if entity @s[tag=YellowGemi,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackGemi
tag @a[tag=BackGemi] add MissiMSG

#Lifter
execute if entity @s[tag=BlueLift,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackLift
execute if entity @s[tag=YellowLift,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackLift
tag @a[tag=BackLift] add MissiMSG

#Hypersonic
execute if entity @s[tag=BlueHyper,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackHyper
execute if entity @s[tag=YellowHyper,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackHyper
tag @a[tag=BackHyper] add MissiMSG

#Bullet
execute if entity @s[tag=BlueBull,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBull
execute if entity @s[tag=YellowBull,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBull
tag @a[tag=BackBull] add MissiMSG

#Duplex
execute if entity @s[tag=BlueDuplex,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackDuplex
execute if entity @s[tag=YellowDuplex,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackDuplex
tag @a[tag=BackDuplex] add MissiMSG

#Broadsword
execute if entity @s[tag=BlueBroad,tag=!surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBroad
execute if entity @s[tag=YellowBroad,tag=!surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackBroad
tag @a[tag=BackBroad] add MissiMSG

#Surprise Egg
execute if entity @s[tag=bluemissile,tag=surp] as @a[team=Blue,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackSurprise
execute if entity @s[tag=yellowmissile,tag=surp] as @a[team=Yellow,sort=nearest,distance=..12] if score @s playerUUID = $missile playerUUID run tag @s add BackSurprise
tag @a[tag=BackSurprise] add MissiMSG

#Special cases
execute if entity @s[tag=yellowmissile,tag=void] at @s if entity @a[team=Yellow,sort=nearest,distance=..12,tag=MissiMSG] run tag @a[team=Yellow,sort=nearest,distance=..12,tag=MissiMSG] add voidMSG
execute if entity @s[tag=bluemissile,tag=void] at @s if entity @a[team=Blue,sort=nearest,distance=..12,tag=MissiMSG] run tag @a[team=Blue,sort=nearest,distance=..12,tag=MissiMSG] add voidMSG
execute if entity @s[tag=yellowmissile,tag=roof] at @s if entity @a[team=Yellow,sort=nearest,distance=..12,tag=MissiMSG] run tag @a[team=Yellow,sort=nearest,distance=..12,tag=MissiMSG] add roofMSG
execute if entity @s[tag=bluemissile,tag=roof] at @s if entity @a[team=Blue,sort=nearest,distance=..12,tag=MissiMSG] run tag @a[team=Blue,sort=nearest,distance=..12,tag=MissiMSG] add roofMSG
execute if entity @s[tag=yellowmissile,tag=antigrief] at @s if entity @a[team=Yellow,sort=nearest,distance=..12,tag=MissiMSG] run tag @a[team=Yellow,sort=nearest,distance=..12,tag=MissiMSG] add antigriefMSG
execute if entity @s[tag=bluemissile,tag=antigrief] at @s if entity @a[team=Blue,sort=nearest,distance=..12,tag=MissiMSG] run tag @a[team=Blue,sort=nearest,distance=..12,tag=MissiMSG] add antigriefMSG
execute if entity @s[tag=yellowmissile,tag=spawnpoint] at @s if entity @a[team=Yellow,sort=nearest,distance=..12,tag=MissiMSG] run tag @a[team=Yellow,sort=nearest,distance=..12,tag=MissiMSG] add spawnpointMSG
execute if entity @s[tag=bluemissile,tag=spawnpoint] at @s if entity @a[team=Blue,sort=nearest,distance=..12,tag=MissiMSG] run tag @a[team=Blue,sort=nearest,distance=..12,tag=MissiMSG] add spawnpointMSG

#All missiles
tp @s ~ ~-300 ~
kill @s
scoreboard players reset $missile playerUUID