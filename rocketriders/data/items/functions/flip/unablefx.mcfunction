##Detects the player who likely placed the prevented missile (flipped version)

#Auxiliary
execute if entity @s[tag=BlueAux] at @s store result score @s AuxSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] AuxSpawned
execute if entity @s[tag=BlueAux] at @s if score @s AuxSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] AuxSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackAux
execute if entity @s[tag=BlueAux] at @s if score @s AuxSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] AuxSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowAux] at @s store result score @s AuxSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] AuxSpawned
execute if entity @s[tag=YellowAux] at @s if score @s AuxSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] AuxSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackAux
execute if entity @s[tag=YellowAux] at @s if score @s AuxSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] AuxSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#TomaTwo
execute if entity @s[tag=BlueToma] at @s store result score @s TomaSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] TomaSpawned
execute if entity @s[tag=BlueToma] at @s if score @s TomaSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] TomaSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackToma
execute if entity @s[tag=BlueToma] at @s if score @s TomaSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] TomaSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowToma] at @s store result score @s TomaSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] TomaSpawned
execute if entity @s[tag=YellowToma] at @s if score @s TomaSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] TomaSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackToma
execute if entity @s[tag=YellowToma] at @s if score @s TomaSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] TomaSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Chronullifier
execute if entity @s[tag=BlueNull] at @s store result score @s NullSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] NullSpawned
execute if entity @s[tag=BlueNull] at @s if score @s NullSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] NullSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackNull
execute if entity @s[tag=BlueNull] at @s if score @s NullSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] NullSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowNull] at @s store result score @s NullSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] NullSpawned
execute if entity @s[tag=YellowNull] at @s if score @s NullSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] NullSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackNull
execute if entity @s[tag=YellowNull] at @s if score @s NullSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] NullSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Warhead
execute if entity @s[tag=BlueWar] at @s store result score @s WarSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] WarSpawned
execute if entity @s[tag=BlueWar] at @s if score @s WarSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] WarSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackWar
execute if entity @s[tag=BlueWar] at @s if score @s WarSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] WarSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowWar] at @s store result score @s WarSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] WarSpawned
execute if entity @s[tag=YellowWar] at @s if score @s WarSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] WarSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackWar
execute if entity @s[tag=YellowWar] at @s if score @s WarSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] WarSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Thunderbolt
execute if entity @s[tag=BlueBolt] at @s store result score @s ThunSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] ThunSpawned
execute if entity @s[tag=BlueBolt] at @s if score @s ThunSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] ThunSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackBolt
execute if entity @s[tag=BlueBolt] at @s if score @s ThunSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] ThunSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowBolt] at @s store result score @s ThunSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] ThunSpawned
execute if entity @s[tag=YellowBolt] at @s if score @s ThunSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] ThunSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackBolt
execute if entity @s[tag=YellowBolt] at @s if score @s ThunSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] ThunSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Hurricane
execute if entity @s[tag=BlueHur] at @s store result score @s HurSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] HurSpawned
execute if entity @s[tag=BlueHur] at @s if score @s HurSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] HurSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackHur
execute if entity @s[tag=BlueHur] at @s if score @s HurSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] HurSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowHur] at @s store result score @s HurSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] HurSpawned
execute if entity @s[tag=YellowHur] at @s if score @s HurSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] HurSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackHur
execute if entity @s[tag=YellowHur] at @s if score @s HurSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] HurSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Elder Guardian
execute if entity @s[tag=BlueGuard] at @s store result score @s GuardSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] GuardSpawned
execute if entity @s[tag=BlueGuard] at @s if score @s GuardSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] GuardSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackGuard
execute if entity @s[tag=BlueGuard] at @s if score @s GuardSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] GuardSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowGuard] at @s store result score @s GuardSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] GuardSpawned
execute if entity @s[tag=YellowGuard] at @s if score @s GuardSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] GuardSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackGuard
execute if entity @s[tag=YellowGuard] at @s if score @s GuardSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] GuardSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#A.N.T.
execute if entity @s[tag=BlueAnt] at @s store result score @s AntsSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] AntsSpawned
execute if entity @s[tag=BlueAnt] at @s if score @s AntsSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] AntsSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackAnt
execute if entity @s[tag=BlueAnt] at @s if score @s AntsSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] AntsSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowAnt] at @s store result score @s AntsSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] AntsSpawned
execute if entity @s[tag=YellowAnt] at @s if score @s AntsSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] AntsSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackAnt
execute if entity @s[tag=YellowAnt] at @s if score @s AntsSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] AntsSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Blade
execute if entity @s[tag=BlueBlade] at @s store result score @s BladeSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] BladeSpawned
execute if entity @s[tag=BlueBlade] at @s if score @s BladeSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] BladeSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackBlade
execute if entity @s[tag=BlueBlade] at @s if score @s BladeSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] BladeSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowBlade] at @s store result score @s BladeSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] BladeSpawned
execute if entity @s[tag=YellowBlade] at @s if score @s BladeSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] BladeSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackBlade
execute if entity @s[tag=YellowBlade] at @s if score @s BladeSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] BladeSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Rifter
execute if entity @s[tag=BlueRift] at @s store result score @s RifterSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] RifterSpawned
execute if entity @s[tag=BlueRift] at @s if score @s RifterSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] RifterSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackRift
execute if entity @s[tag=BlueRift] at @s if score @s RifterSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] RifterSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowRift] at @s store result score @s RifterSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] RifterSpawned
execute if entity @s[tag=YellowRift] at @s if score @s RifterSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] RifterSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackRift
execute if entity @s[tag=YellowRift] at @s if score @s RifterSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] RifterSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Juggerbuster
execute if entity @s[tag=BlueJug] at @s store result score @s JugbSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] JugbSpawned
execute if entity @s[tag=BlueJug] at @s if score @s JugbSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] JugbSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackJug
execute if entity @s[tag=BlueJug] at @s if score @s JugbSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] JugbSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowJug] at @s store result score @s JugbSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] JugbSpawned
execute if entity @s[tag=YellowJug] at @s if score @s JugbSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] JugbSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackJug
execute if entity @s[tag=YellowJug] at @s if score @s JugbSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] JugbSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Slasher
execute if entity @s[tag=BlueSlash] at @s store result score @s SlashSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] SlashSpawned
execute if entity @s[tag=BlueSlash] at @s if score @s SlashSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] SlashSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackSlash
execute if entity @s[tag=BlueSlash] at @s if score @s SlashSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] SlashSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowSlash] at @s store result score @s SlashSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] SlashSpawned
execute if entity @s[tag=YellowSlash] at @s if score @s SlashSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] SlashSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackSlash
execute if entity @s[tag=YellowSlash] at @s if score @s SlashSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] SlashSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Catapult
execute if entity @s[tag=BlueCata] at @s store result score @s CataSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] CataSpawned
execute if entity @s[tag=BlueCata] at @s if score @s CataSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] CataSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackCata
execute if entity @s[tag=BlueCata] at @s if score @s CataSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] CataSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowCata] at @s store result score @s CataSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] CataSpawned
execute if entity @s[tag=YellowCata] at @s if score @s CataSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] CataSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackCata
execute if entity @s[tag=YellowCata] at @s if score @s CataSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] CataSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Citadel
execute if entity @s[tag=BlueCitadel] at @s store result score @s CitaSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] CitaSpawned
execute if entity @s[tag=BlueCitadel] at @s if score @s CitaSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] CitaSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackCitadel
execute if entity @s[tag=BlueCitadel] at @s if score @s CitaSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] CitaSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowCitadel] at @s store result score @s CitaSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] CitaSpawned
execute if entity @s[tag=YellowCitadel] at @s if score @s CitaSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] CitaSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackCitadel
execute if entity @s[tag=YellowCitadel] at @s if score @s CitaSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] CitaSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Gemini
execute if entity @s[tag=BlueGemi] at @s store result score @s GemiSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] GemiSpawned
execute if entity @s[tag=BlueGemi] at @s if score @s GemiSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] GemiSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackGemini
execute if entity @s[tag=BlueGemi] at @s if score @s GemiSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] GemiSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowGemi] at @s store result score @s GemiSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] GemiSpawned
execute if entity @s[tag=YellowGemi] at @s if score @s GemiSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] GemiSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackGemini
execute if entity @s[tag=YellowGemi] at @s if score @s GemiSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] GemiSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Lifter
execute if entity @s[tag=BlueLift] at @s store result score @s LifterSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] LifterSpawned
execute if entity @s[tag=BlueLift] at @s if score @s LifterSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] LifterSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackLift
execute if entity @s[tag=BlueLift] at @s if score @s LifterSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] LifterSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowLift] at @s store result score @s LifterSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] LifterSpawned
execute if entity @s[tag=YellowLift] at @s if score @s LifterSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] LifterSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackLift
execute if entity @s[tag=YellowLift] at @s if score @s LifterSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] LifterSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Hypersonic
execute if entity @s[tag=BlueHyper] at @s store result score @s HyperSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] HyperSpawned
execute if entity @s[tag=BlueHyper] at @s if score @s HyperSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] HyperSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackHyper
execute if entity @s[tag=BlueHyper] at @s if score @s HyperSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] HyperSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowHyper] at @s store result score @s HyperSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] HyperSpawned
execute if entity @s[tag=YellowHyper] at @s if score @s HyperSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] HyperSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackHyper
execute if entity @s[tag=YellowHyper] at @s if score @s HyperSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] HyperSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Bullet
execute if entity @s[tag=BlueBull] at @s store result score @s BulletSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] BulletSpawned
execute if entity @s[tag=BlueBull] at @s if score @s BulletSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] BulletSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackBullet
execute if entity @s[tag=BlueBull] at @s if score @s BulletSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] BulletSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowBull] at @s store result score @s BulletSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] BulletSpawned
execute if entity @s[tag=YellowBull] at @s if score @s BulletSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] BulletSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackBullet
execute if entity @s[tag=YellowBull] at @s if score @s BulletSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] BulletSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Duplex
execute if entity @s[tag=BlueDuplex] at @s store result score @s DuplexSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] DuplexSpawned
execute if entity @s[tag=BlueDuplex] at @s if score @s DuplexSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] DuplexSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackDuplex
execute if entity @s[tag=BlueDuplex] at @s if score @s DuplexSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] DuplexSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowDuplex] at @s store result score @s DuplexSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] DuplexSpawned
execute if entity @s[tag=YellowDuplex] at @s if score @s DuplexSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] DuplexSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackDuplex
execute if entity @s[tag=YellowDuplex] at @s if score @s DuplexSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] DuplexSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#Broadsword
execute if entity @s[tag=BlueBroad] at @s store result score @s BroadSpawned run scoreboard players get @p[team=Yellow,sort=nearest,limit=1,distance=..12] BroadSpawned
execute if entity @s[tag=BlueBroad] at @s if score @s BroadSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] BroadSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add BackBroad
execute if entity @s[tag=BlueBroad] at @s if score @s BroadSpawned = @a[team=Yellow,sort=nearest,limit=1,distance=..12] BroadSpawned run tag @a[team=Yellow,sort=nearest,limit=1,distance=..12] add MissiMSG

execute if entity @s[tag=YellowBroad] at @s store result score @s BroadSpawned run scoreboard players get @p[team=Blue,sort=nearest,limit=1,distance=..12] BroadSpawned
execute if entity @s[tag=YellowBroad] at @s if score @s BroadSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] BroadSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add BackBroad
execute if entity @s[tag=YellowBroad] at @s if score @s BroadSpawned = @a[team=Blue,sort=nearest,limit=1,distance=..12] BroadSpawned run tag @a[team=Blue,sort=nearest,limit=1,distance=..12] add MissiMSG

#All missiles
tp @s ~ ~-300 ~
kill @s