##Detects the player who likely placed the prevented missile

#UUID match
execute store result score $missile playerUUID run data get entity @s data.UUID[0]

#Auxiliary
execute if entity @s[tag=BlueAux,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackAux
execute if entity @s[tag=YellowAux,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackAux
tag @a[predicate=custom:indimension,tag=BackAux] add MissiMSG

#TomaTwo
execute if entity @s[tag=BlueToma,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackToma
execute if entity @s[tag=YellowToma,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackToma
tag @a[predicate=custom:indimension,tag=BackToma] add MissiMSG

#Chronullifier
execute if entity @s[tag=BlueNull,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackNull
execute if entity @s[tag=YellowNull,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackNull
tag @a[predicate=custom:indimension,tag=BackNull] add MissiMSG

#Warhead
execute if entity @s[tag=BlueWar,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackWar
execute if entity @s[tag=YellowWar,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackWar
tag @a[predicate=custom:indimension,tag=BackWar] add MissiMSG

#Thunderbolt
execute if entity @s[tag=BlueBolt,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackBolt
execute if entity @s[tag=YellowBolt,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackBolt
tag @a[predicate=custom:indimension,tag=BackBolt] add MissiMSG

#Hurricane
execute if entity @s[tag=BlueHur,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackHur
execute if entity @s[tag=YellowHur,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackHur
tag @a[predicate=custom:indimension,tag=BackHur] add MissiMSG

#Elder Guardian
execute if entity @s[tag=BlueGuard,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackGuard
execute if entity @s[tag=YellowGuard,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackGuard
tag @a[predicate=custom:indimension,tag=BackGuard] add MissiMSG

#A.N.T.
execute if entity @s[tag=BlueAnt,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackAnt
execute if entity @s[tag=YellowAnt,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackAnt
tag @a[predicate=custom:indimension,tag=BackAnt] add MissiMSG

#Blade
execute if entity @s[tag=BlueBlade,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackBlade
execute if entity @s[tag=YellowBlade,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackBlade
tag @a[predicate=custom:indimension,tag=BackBlade] add MissiMSG

#Rifter
execute if entity @s[tag=BlueRift,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackRift
execute if entity @s[tag=YellowRift,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackRift
tag @a[predicate=custom:indimension,tag=BackRift] add MissiMSG

#Juggerbuster
execute if entity @s[tag=BlueJug,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackJug
execute if entity @s[tag=YellowJug,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackJug
tag @a[predicate=custom:indimension,tag=BackJug] add MissiMSG

#Slasher
execute if entity @s[tag=BlueSlash,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackSlash
execute if entity @s[tag=YellowSlash,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackSlash
tag @a[predicate=custom:indimension,tag=BackSlash] add MissiMSG

#Catapult
execute if entity @s[tag=BlueCata,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackCata
execute if entity @s[tag=YellowCata,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackCata
tag @a[predicate=custom:indimension,tag=BackCata] add MissiMSG

#Citadel
execute if entity @s[tag=BlueCitadel,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackCitadel
execute if entity @s[tag=YellowCitadel,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackCitadel
tag @a[predicate=custom:indimension,tag=BackCitadel] add MissiMSG

#Gemini
execute if entity @s[tag=BlueGemi,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackGemi
execute if entity @s[tag=YellowGemi,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackGemi
tag @a[predicate=custom:indimension,tag=BackGemi] add MissiMSG

#Lifter
execute if entity @s[tag=BlueLift,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackLift
execute if entity @s[tag=YellowLift,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackLift
tag @a[predicate=custom:indimension,tag=BackLift] add MissiMSG

#Hypersonic
execute if entity @s[tag=BlueHyper,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackHyper
execute if entity @s[tag=YellowHyper,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackHyper
tag @a[predicate=custom:indimension,tag=BackHyper] add MissiMSG

#Bullet
execute if entity @s[tag=BlueBull,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackBull
execute if entity @s[tag=YellowBull,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackBull
tag @a[predicate=custom:indimension,tag=BackBull] add MissiMSG

#Duplex
execute if entity @s[tag=BlueDuplex,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackDuplex
execute if entity @s[tag=YellowDuplex,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackDuplex
tag @a[predicate=custom:indimension,tag=BackDuplex] add MissiMSG

#Broadsword
execute if entity @s[tag=BlueBroad,tag=!surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackBroad
execute if entity @s[tag=YellowBroad,tag=!surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackBroad
tag @a[predicate=custom:indimension,tag=BackBroad] add MissiMSG

#Surprise Egg
execute if entity @s[tag=bluemissile,tag=surp] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackSurprise
execute if entity @s[tag=yellowmissile,tag=surp] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackSurprise
tag @a[predicate=custom:indimension,tag=BackSurprise] add MissiMSG

#Fireball
execute if entity @s[tag=BlueFireball] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackFireball
execute if entity @s[tag=YellowFireball] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackFireball
tag @a[predicate=custom:indimension,tag=BackFireball] add MissiMSG

#Obsidian Shield
execute if entity @s[tag=BlueObshield] as @a[predicate=custom:indimension,team=Blue] if score @s playerUUID = $missile playerUUID run tag @s add BackObshield
execute if entity @s[tag=YellowObshield] as @a[predicate=custom:indimension,team=Yellow] if score @s playerUUID = $missile playerUUID run tag @s add BackObshield
tag @a[predicate=custom:indimension,tag=BackObshield] add MissiMSG

#Special cases
execute if entity @s[tag=yellowmissile,tag=void] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add voidMSG
execute if entity @s[tag=bluemissile,tag=void] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add voidMSG
execute if entity @s[tag=yellowmissile,tag=roof] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add roofMSG
execute if entity @s[tag=bluemissile,tag=roof] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add roofMSG
execute if entity @s[tag=yellowmissile,tag=antigrief] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add antigriefMSG
execute if entity @s[tag=bluemissile,tag=antigrief] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add antigriefMSG
execute if entity @s[tag=yellowmissile,tag=spawnpoint] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add spawnpointMSG
execute if entity @s[tag=bluemissile,tag=spawnpoint] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add spawnpointMSG
execute if entity @s[tag=yellowmissile,tag=collisioncontrol] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add collisionMSG
execute if entity @s[tag=bluemissile,tag=collisioncontrol] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add collisionMSG
execute if entity @s[tag=YellowFireball,tag=void] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add voidMSGFB
execute if entity @s[tag=BlueFireball,tag=void] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add voidMSGFB
execute if entity @s[tag=YellowFireball,tag=roof] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add roofMSGFB
execute if entity @s[tag=BlueFireball,tag=roof] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add roofMSGFB
execute if entity @s[tag=YellowObshield,tag=void] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add voidMSGOS
execute if entity @s[tag=BlueObshield,tag=void] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add voidMSGOS
execute if entity @s[tag=YellowObshield,tag=roof] at @s if entity @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Yellow,tag=MissiMSG] add roofMSGOS
execute if entity @s[tag=BlueObshield,tag=roof] at @s if entity @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] run tag @a[predicate=custom:indimension,team=Blue,tag=MissiMSG] add roofMSGOS

#All missiles
tp @s ~ ~-300 ~
data merge entity @s[tag=missile] {Tags:["UnableMissile"]}
scoreboard players reset $missile playerUUID
execute as @e[predicate=custom:indimension,type=marker,tag=UnableClear] at @s run function items:prevention/clearafter