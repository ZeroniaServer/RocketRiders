##Detects the player who likely placed the prevented missile

#Auxiliary
execute if entity @s[tag=BlueAux,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackAux
execute if entity @s[tag=YellowAux,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackAux
tag @a[x=0,tag=BackAux,limit=1] add MissiMSG

#TomaTwo
execute if entity @s[tag=BlueToma,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackToma
execute if entity @s[tag=YellowToma,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackToma
tag @a[x=0,tag=BackToma,limit=1] add MissiMSG

#Chronullifier
execute if entity @s[tag=BlueNull,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackNull
execute if entity @s[tag=YellowNull,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackNull
tag @a[x=0,tag=BackNull,limit=1] add MissiMSG

#Warhead
execute if entity @s[tag=BlueWar,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackWar
execute if entity @s[tag=YellowWar,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackWar
tag @a[x=0,tag=BackWar,limit=1] add MissiMSG

#Thunderbolt
execute if entity @s[tag=BlueBolt,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackBolt
execute if entity @s[tag=YellowBolt,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackBolt
tag @a[x=0,tag=BackBolt,limit=1] add MissiMSG

#Hurricane
execute if entity @s[tag=BlueHur,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackHur
execute if entity @s[tag=YellowHur,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackHur
tag @a[x=0,tag=BackHur,limit=1] add MissiMSG

#Elder Guardian
execute if entity @s[tag=BlueGuard,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackGuard
execute if entity @s[tag=YellowGuard,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackGuard
tag @a[x=0,tag=BackGuard,limit=1] add MissiMSG

#A.N.T.
execute if entity @s[tag=BlueAnt,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackAnt
execute if entity @s[tag=YellowAnt,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackAnt
tag @a[x=0,tag=BackAnt,limit=1] add MissiMSG

#Blade
execute if entity @s[tag=BlueBlade,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackBlade
execute if entity @s[tag=YellowBlade,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackBlade
tag @a[x=0,tag=BackBlade,limit=1] add MissiMSG

#Rifter
execute if entity @s[tag=BlueRift,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackRift
execute if entity @s[tag=YellowRift,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackRift
tag @a[x=0,tag=BackRift,limit=1] add MissiMSG

#Juggerbuster
execute if entity @s[tag=BlueJug,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackJug
execute if entity @s[tag=YellowJug,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackJug
tag @a[x=0,tag=BackJug,limit=1] add MissiMSG

#Slasher
execute if entity @s[tag=BlueSlash,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackSlash
execute if entity @s[tag=YellowSlash,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackSlash
tag @a[x=0,tag=BackSlash,limit=1] add MissiMSG

#Catapult
execute if entity @s[tag=BlueCata,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackCata
execute if entity @s[tag=YellowCata,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackCata
tag @a[x=0,tag=BackCata,limit=1] add MissiMSG

#Citadel
execute if entity @s[tag=BlueCitadel,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackCitadel
execute if entity @s[tag=YellowCitadel,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackCitadel
tag @a[x=0,tag=BackCitadel,limit=1] add MissiMSG

#Gemini
execute if entity @s[tag=BlueGemi,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackGemi
execute if entity @s[tag=YellowGemi,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackGemi
tag @a[x=0,tag=BackGemi,limit=1] add MissiMSG

#Lifter
execute if entity @s[tag=BlueLift,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackLift
execute if entity @s[tag=YellowLift,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackLift
tag @a[x=0,tag=BackLift,limit=1] add MissiMSG

#Hypersonic
execute if entity @s[tag=BlueHyper,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackHyper
execute if entity @s[tag=YellowHyper,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackHyper
tag @a[x=0,tag=BackHyper,limit=1] add MissiMSG

#Bullet
execute if entity @s[tag=BlueBull,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackBull
execute if entity @s[tag=YellowBull,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackBull
tag @a[x=0,tag=BackBul,limit=1] add MissiMSG

#Duplex
execute if entity @s[tag=BlueDuplex,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackDuplex
execute if entity @s[tag=YellowDuplex,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackDuplex
tag @a[x=0,tag=BackDuplex,limit=1] add MissiMSG

#Broadsword
execute if entity @s[tag=BlueBroad,tag=!surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackBroad
execute if entity @s[tag=YellowBroad,tag=!surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackBroad
tag @a[x=0,tag=BackBroad,limit=1] add MissiMSG

#Surprise Egg
execute if entity @s[tag=bluemissile,tag=surp] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackSurprise
execute if entity @s[tag=yellowmissile,tag=surp] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackSurprise
tag @a[x=0,tag=BackSurprise,limit=1] add MissiMSG

#Fireball
execute if entity @s[tag=BlueFireball,tag=!Cluster] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackFireball
execute if entity @s[tag=YellowFireball,tag=!Cluster] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackFireball
tag @a[x=0,tag=BackFireball,limit=1] add MissiMSG

#Cluster Fireball
execute if entity @s[tag=BlueFireball,tag=Cluster] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackClusterFireball
execute if entity @s[tag=YellowFireball,tag=Cluster] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackClusterFireball
tag @a[x=0,tag=BackClusterFireball,limit=1] add MissiMSG

#Obsidian Shield
execute if entity @s[tag=BlueObshield] run tag @a[x=0,team=Blue,tag=placer,limit=1] add BackObshield
execute if entity @s[tag=YellowObshield] run tag @a[x=0,team=Yellow,tag=placer,limit=1] add BackObshield
tag @a[x=0,tag=BackObshield,limit=1] add MissiMSG

#Special cases
execute if entity @s[tag=yellowmissile,tag=void] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add voidMSG
execute if entity @s[tag=bluemissile,tag=void] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add voidMSG
execute if entity @s[tag=yellowmissile,tag=roof] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add roofMSG
execute if entity @s[tag=bluemissile,tag=roof] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add roofMSG
execute if entity @s[tag=yellowmissile,tag=antigrief] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add antigriefMSG
execute if entity @s[tag=bluemissile,tag=antigrief] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add antigriefMSG
execute if entity @s[tag=yellowmissile,tag=spawnpoint] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add spawnpointMSG
execute if entity @s[tag=bluemissile,tag=spawnpoint] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add spawnpointMSG
execute if entity @s[tag=yellowmissile,tag=collisioncontrol] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add collisionMSG
execute if entity @s[tag=bluemissile,tag=collisioncontrol] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add collisionMSG
execute if entity @s[tag=YellowFireball,tag=void] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add voidMSGFB
execute if entity @s[tag=BlueFireball,tag=void] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add voidMSGFB
execute if entity @s[tag=YellowFireball,tag=roof] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add roofMSGFB
execute if entity @s[tag=BlueFireball,tag=roof] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add roofMSGFB
execute if entity @s[tag=YellowObshield,tag=void] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add voidMSGOS
execute if entity @s[tag=BlueObshield,tag=void] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add voidMSGOS
execute if entity @s[tag=YellowObshield,tag=roof] run tag @a[x=0,team=Yellow,tag=MissiMSG,limit=1] add roofMSGOS
execute if entity @s[tag=BlueObshield,tag=roof] run tag @a[x=0,team=Blue,tag=MissiMSG,limit=1] add roofMSGOS

#All spawnables
tp @s ~ ~-300 ~
data merge entity @s[tag=missile] {Tags:["UnableMissile"]}
scoreboard players reset $missile playerUUID
execute as @e[x=0,type=marker,tag=UnableClear] at @s run function items:prevention/clearafter