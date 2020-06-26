###############################################################
## INITIALIZE: Resets the entire set of Credits armor stands ##
## Operator command used for mass changes to player credits  ##
###############################################################

kill @e[tag=creditsAS]

#Developers
summon armor_stand -49 216 79 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","YZEROCredits"],Rotation:[8f],Pose:{Head:[352f,5f,0f],LeftLeg:[25f,0f,0f],RightLeg:[334f,0f,0f],LeftArm:[319f,0f,0f],RightArm:[214f,73f,0f]}}
summon armor_stand -49 216 78 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","SelectedDev","EvtemaCredits"]}
summon armor_stand -49 216 77 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","ChronosCredits"],Pose:{Head:[352f,0f,0f],LeftArm:[256f,35f,0f],RightArm:[250f,347f,0f]}}

replaceitem entity @e[tag=EvtemaCredits] armor.head player_head{SkullOwner:{Id:[I;-1887554432,-1266989808,-1240541371,-920284436],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWRjNDJlYTk4ZTExNjRlNWQ4MmI5ZGM3N2M5NGNjMjJmYmY1NmRlNzg3MDNjMDQ3ZmYxNWU4NzA2N2NmNWNiYSJ9fX0="}]}}}
replaceitem entity @e[tag=EvtemaCredits] weapon.mainhand slime_ball
replaceitem entity @e[tag=EvtemaCredits] armor.chest leather_chestplate{display:{color:14548992}}
replaceitem entity @e[tag=EvtemaCredits] armor.legs leather_leggings{display:{color:14548992}}
replaceitem entity @e[tag=EvtemaCredits] armor.feet leather_boots{display:{color:7470949}}

replaceitem entity @e[tag=YZEROCredits] armor.head player_head{SkullOwner:{Id:[I;1230328529,-275232718,-1541954820,1954902720],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE1Y2EyZDE2OWJmMmVjODJmNzEzOWJjZWUxNDYwYjg0ZjJkYjVjNmZiNmMzNmU0NTUzNTA2MTQxYjUyMjA2NSJ9fX0="}]}}}
replaceitem entity @e[tag=YZEROCredits] weapon.mainhand chain_command_block
replaceitem entity @e[tag=YZEROCredits] weapon.offhand tropical_fish
replaceitem entity @e[tag=YZEROCredits] armor.chest leather_chestplate{display:{color:1184274}}
replaceitem entity @e[tag=YZEROCredits] armor.legs leather_leggings{display:{color:2368548}}
replaceitem entity @e[tag=YZEROCredits] armor.feet leather_boots{display:{color:10682368}}

replaceitem entity @e[tag=ChronosCredits] armor.head player_head{SkullOwner:{Id:[I;-1798532154,1692221812,-2138578109,616246879],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjcyMjhhNDgyZWQxMWY5Y2QzZTZhYmM2YzM5NDRhMWU0YTNiZDJkNGY4OTcwNjk5MDU4ODIxMTQ1NzcxN2Q5YiJ9fX0="}]}}}
replaceitem entity @e[tag=ChronosCredits] weapon.mainhand bow
replaceitem entity @e[tag=ChronosCredits] armor.chest iron_chestplate
replaceitem entity @e[tag=ChronosCredits] armor.legs iron_leggings
replaceitem entity @e[tag=ChronosCredits] armor.feet diamond_boots

#Builders
summon armor_stand -51 211 81 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","HugoCredits"]}
summon armor_stand -51 211 75 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","BardCredits"]}

#oh boy, all individual testers.
summon armor_stand -51 211 74 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KurCredits"]}
summon armor_stand -51 211 73 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RubixCredits"]}
summon armor_stand -51 211 72 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TypCredits"]}
summon armor_stand -51 211 71 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CarsCredits"]}
summon armor_stand -51 211 70 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MaartCredits"]}
summon armor_stand -51 211 69 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DrakanCredits"]}
summon armor_stand -51 211 68 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DarkCredits"]}
summon armor_stand -51 211 67 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AusCredits"]}
summon armor_stand -51 211 66 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DurovCredits"]}
summon armor_stand -51 211 65 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","EonCredits"]}
summon armor_stand -51 211 64 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","JohnCredits"]}
summon armor_stand -51 211 63 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KaisCredits"]}
summon armor_stand -51 211 62 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SeraCredits"]}
summon armor_stand -51 211 82 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SirsCredits"]}
summon armor_stand -51 211 83 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","NyxCredits"]}
summon armor_stand -51 211 84 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AlexCredits"]}
summon armor_stand -51 211 85 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AdamCredits"]}
summon armor_stand -51 211 86 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SamCredits"]}
summon armor_stand -51 211 87 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AztechCredits"]}
summon armor_stand -51 211 88 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","PinguCredits"]}
summon armor_stand -51 211 89 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TopazCredits"]}
summon armor_stand -51 211 90 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","XeoranCredits"]}
summon armor_stand -51 211 91 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","GriffenCredits"]}
summon armor_stand -51 211 92 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KapaCredits"]}
summon armor_stand -51 211 93 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SkyCredits"]}
summon armor_stand -51 211 94 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","VicousCredits"]}
summon armor_stand -52 211 61 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","ProzanCredits"]}
summon armor_stand -52 211 60 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","ToulCredits"]}
summon armor_stand -52 211 59 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","IndigoCredits"]}
summon armor_stand -52 211 58 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","BeardedCredits"]}
summon armor_stand -52 211 57 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LexCredits"]}
summon armor_stand -52 211 56 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KadesCredits"]}
summon armor_stand -52 211 55 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DanielCredits"]}
summon armor_stand -52 211 54 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CarlCredits"]}
summon armor_stand -52 211 53 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","StoneCredits"]}
summon armor_stand -52 211 52 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TuijCredits"]}
summon armor_stand -52 211 51 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","JagCredits"]}
summon armor_stand -52 211 50 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RoboCredits"]}
summon armor_stand -52 211 49 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","UniverseCredits"]}
summon armor_stand -52 211 95 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","GroundCredits"]}
summon armor_stand -52 211 96 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","FunnyCredits"]}
summon armor_stand -52 211 97 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MosesCredits"]}
summon armor_stand -52 211 98 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","ZoruaCredits"]}
summon armor_stand -52 211 99 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LizzeCredits"]}
summon armor_stand -52 211 100 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TNTCredits"]}
summon armor_stand -52 211 101 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RangerCredits"]}
summon armor_stand -52 211 102 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","EraCredits"]}
summon armor_stand -52 211 103 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CagCredits"]}
summon armor_stand -52 211 104 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LlewCredits"]}
summon armor_stand -52 211 105 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LekroCredits"]}
summon armor_stand -52 211 106 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","UnWinCredits"]}
summon armor_stand -52 211 107 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CalverinCredits"]}

#pose and armor
replaceitem entity @e[tag=BuilderCreditsAS] armor.chest leather_chestplate{display:{color:16770835}}
replaceitem entity @e[tag=BuilderCreditsAS] armor.legs leather_leggings{display:{color:16770835}}
replaceitem entity @e[tag=BuilderCreditsAS] armor.feet leather_boots{display:{color:10813439}}

replaceitem entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS] armor.chest leather_chestplate{display:{color:65397}}
replaceitem entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS] armor.legs leather_leggings{display:{color:65397}}
replaceitem entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS] armor.feet leather_boots{display:{color:13784063}}

execute as @e[tag=creditsAS] at @s run tp @s ~ ~ ~ 90 0
execute as @e[tag=devCreditsAS] at @s run tp @s ~ ~ ~ 90 0

#Skulls
replaceitem entity @e[tag=BardCredits] armor.head player_head{SkullOwner:{Id:[I;1899700849,-2072229445,-1464655699,2090884675],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzZhMDA4NjkxNDM1NDllYWEyNmEyM2ViNTQ2OTNjZTUyYzI3YTIxYTA1MTJmZTg3ZmRiNGZmNzBiY2ViYmU3ZiJ9fX0="}]}}}
replaceitem entity @e[tag=HugoCredits] armor.head player_head{SkullOwner:{Id:[I;-181057722,826100551,-1286706438,-737867583],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTJjMmYwMmRhZDI1ZGNiMzk5MDdiZjA0ODY3MzdjZTAxOTc5ZDljMDQ3OTBkYWVlNTBjNzM2ZTI0YTQ2ZjdkMCJ9fX0="}]}}}
replaceitem entity @e[tag=KurCredits] armor.head player_head{SkullOwner:{Id:[I;1332916748,-604683062,-1501352441,-117288475],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2I1MjBjNTM0OWNkMDllMjE2MzMyMWI0ZmUyNmIzYTUwMmEwZjBmNGYxYjEyNzM5NGE2NTUwNzAwODllYmQzNCJ9fX0="}]}}}
replaceitem entity @e[tag=RubixCredits] armor.head player_head{SkullOwner:{Id:[I;542358289,-1184218050,-1412888297,1863394856],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFjMDMwYWY1MzkxMDdjOTcxZjNkMzA0OTU1MDhiYTBjMjJmMjExM2RkZGJiNTM2YzZkNDllMjIxNWQ4ZTFkNSJ9fX0="}]}}}
replaceitem entity @e[tag=TypCredits] armor.head player_head{SkullOwner:{Id:[I;-139439688,-385070938,-1335733841,-1145267504],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjhkNGJjYzQxM2ZjZGZiMWZmOTc5YWQzMzg3MDZhNWE2NDBjOTk2YWE0YmU5OWUwNzZiODE5ZjFkMzQ3ZTk0OSJ9fX0="}]}}}
replaceitem entity @e[tag=CarsCredits] armor.head player_head{SkullOwner:{Id:[I;1627204264,-1150138997,-1673728830,-1125281030],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg5ZWMyYzJlZmJkNTcxMzg1NmNlY2Q2ZDdlMzU3YmU3OWQzOTBjNGY5MjJjNWIzZTA5ZWQzYjhlMWMzMzlmYyJ9fX0="}]}}}
replaceitem entity @e[tag=MaartCredits] armor.head player_head{SkullOwner:{Id:[I;-1216736971,-670940768,-1711156543,-1539951465],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjM5N2MwM2FkMjM2ZjQ3MzU4YjFkMjM3ZmE1MzVkZTkzZDgwMTdhMTVjMmZhNjU0MGIzMWMwNWJlNmZhNjExYiJ9fX0="}]}}}
replaceitem entity @e[tag=DrakanCredits] armor.head player_head{SkullOwner:{Id:[I;127269771,-347388940,-1976124858,-1254147693],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWQ2M2U4NTNmNTE0MDM5OTJhYTZlMjdmODgxMjcxZDMzODZjMWUyMWIzYzVlYTQxYTAwOTVkNTc5M2E3NjI2MSJ9fX0="}]}}}
replaceitem entity @e[tag=AusCredits] armor.head player_head{SkullOwner:{Id:[I;-305900331,743653472,-1363235255,2126609691],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZjMzlkZTZkMGY5ODAyYzA1YzU3ZDI2M2Q1MjVlZTBjNzMwZjJhZGYxYWQwZWFjOWYxODZmZDY4NmY5OTFjYiJ9fX0="}]}}}
replaceitem entity @e[tag=DurovCredits] armor.head player_head{SkullOwner:{Id:[I;1921723164,-347913876,-1897961442,1267602185],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2VkMzYwOTdmY2JjOWU3YTY0MTlmNDFiY2E3MzdlNzhlNzRiZjViNzVjYzNlMTczNDU2ZTdiODM0N2RhMzlmZCJ9fX0="}]}}}
replaceitem entity @e[tag=EonCredits] armor.head player_head{SkullOwner:{Id:[I;53479038,-877573417,-1598212735,-91812982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDAyNjMxZjczYWQwYjRlMDNmYzFlZjU5MWI3ZDJjMGQ4NDg2YzFjZmIwYjhiNWFkOTYwNzc5MmQ5OGEzMGMwOCJ9fX0="}]}}}
replaceitem entity @e[tag=JohnCredits] armor.head player_head{SkullOwner:{Id:[I;1347534757,1950762203,-1156839595,1810385252],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzcwNTIxY2UyMmRiNWVlODFmZTRlZTRkOGFlNjQ2ZGYxOTcwZGQ4ZmIzY2NmOGQyNDQ1YmQ0ZjRhNjVkMDQ5OSJ9fX0="}]}}}
replaceitem entity @e[tag=KaisCredits] armor.head player_head{SkullOwner:Kaisheng21}
replaceitem entity @e[tag=SeraCredits] armor.head player_head{SkullOwner:{Id:[I;-394650431,-32160608,-1731970518,1357450115],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTRkMjExMGU1YTM4MmE2ZjVhMmQ0ZDAwZTFlNDZkNTkxMWRkYjEwYmQ0N2ZlYTY0NzYzMzFiN2UxMjg1MjU0ZCJ9fX0="}]}}}
replaceitem entity @e[tag=DarkCredits] armor.head player_head{SkullOwner:{Id:[I;1512598029,2124304031,-2123395457,-1051642108],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWI4NTkzYTdjNjA2MmEyZjQ5NDJiZmJjMTY4Mjg1OTMzZDIyNWMzYzI3ZjRiOWU1MDBjODNjZjg4MDlmODU0ZCJ9fX0="}]}}}
replaceitem entity @e[tag=SirsCredits] armor.head player_head{SkullOwner:{Id:[I;-1506818014,-1652799118,-1630060083,-1678364516],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWViMTBkYzc2Y2NhOGNiMjlkOTRjNTBlMDNjMDk0NjdjZTIwZmYwZDVlNjEzYjU0ZmU0NDMzYWYwZGY5MWIyZCJ9fX0="}]}}}
replaceitem entity @e[tag=NyxCredits] armor.head player_head{SkullOwner:{Id:[I;-1695900350,1727416608,-1829464984,-275670247],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMzYzQ5NGQwYWFlMGY2OTFmZjNkOThmY2I1ZWE4YThiZTFmZTk5MzhiODczM2Y1YTNjYTYyOWIyMjhhNGVkZSJ9fX0="}]}}}
replaceitem entity @e[tag=AlexCredits] armor.head player_head{SkullOwner:{Id:[I;-1907429098,-1680257412,-1933621523,646226029],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY5Y2I4MTIwOTI3ODZhM2EyZDhhNjI4MzA4ZWZkOTczZjVlZWNjZWRjN2FkNzk5MmNmMzA5ZmYzOTBjMDJmZCJ9fX0="}]}}}
replaceitem entity @e[tag=AdamCredits] armor.head player_head{SkullOwner:{Id:[I;1226688824,55069902,-1140996701,1764868568],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWJkZmY5ZWJiOTcwYTQzZTE2NjFlZjg2MjRlZTNiYmRhOWViMDlhMjViYTMwNjY4NmNhYmUxYjMyZmQ5ZDA1NyJ9fX0="}]}}}
replaceitem entity @e[tag=SamCredits] armor.head player_head{SkullOwner:{Id:[I;-1145499336,-364164865,-1215735357,-1950804594],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjk1NTAxNjNhYTNiMmE4ZWNlNzVlYWU0YzY5NDgxZTcyZTkyMmNhMWQzMTliNjczOWNlNTRhNTYxMTdhNGI2YSJ9fX0="}]}}}
replaceitem entity @e[tag=AztechCredits] armor.head player_head{SkullOwner:{Id:[I;-909430458,260132685,-1938640787,1514988633],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODNhYTUxYjU5NDA0MjZmMDkxNDNiYjZkOGJjYjhjZjBhZjcxMjU5M2MwN2U0ZTIyOGJjYmQyYWZlMjg0MWIyZSJ9fX0="}]}}}
replaceitem entity @e[tag=PinguCredits] armor.head player_head{SkullOwner:{Id:[I;312133945,783502546,-1444483211,1258499356],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZiYjdiOGZlYTIyODUxYTQ1Y2M2N2ZmMTZhM2U0YzY0NjVjNTY2N2M4N2Q3ZWQ1Njg5ZWM5MWI3Y2U4MWZjMyJ9fX0="}]}}}
replaceitem entity @e[tag=TopazCredits] armor.head player_head{SkullOwner:{Id:[I;208321416,26693198,-1470050725,-2021259618],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ0ZTgwNDUwNmJiNzRjNjQxZGQxZDk4YTQ4Y2ZiMTc2YWMzNjgwZTk3YjM1ZmRiYmMyOTQ1OTVkOWQxZWVkMSJ9fX0="}]}}}
replaceitem entity @e[tag=XeoranCredits] armor.head player_head{SkullOwner:{Id:[I;-1909998027,2044936679,-1463249917,-1419126564],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjkxZWQzY2Q1MzEwYzQ4ZjllN2UwMWVlY2MxYjE2M2FkZGIzZWIxNjAyMjk3ZThlOTkwYzhlNGJiY2ExODE4OCJ9fX0="}]}}}
replaceitem entity @e[tag=GriffenCredits] armor.head player_head{SkullOwner:{Id:[I;-1182292693,-2127412096,-1484639685,-1984768555],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjQ3OTU0MTQ0MTNiNzAyODUwMWMzMzBmNmZjOGEzM2I1NTZmYzI4MTdiNzEyNmRlMGVlNGZjMWZiODc5NzFiOCJ9fX0="}]}}}
replaceitem entity @e[tag=KapaCredits] armor.head player_head{SkullOwner:{Id:[I;-226794808,-815051207,-1468662914,-225141972],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjRkNDUyZDE4MTQwODAwMmE3MjAyYzgwNjUxNzJhOTE0YTAzNDBlMTVhMzAyOWMxZGMyZGFmNzE4NjE4MzA4OSJ9fX0="}]}}}
replaceitem entity @e[tag=SkyCredits] armor.head player_head{SkullOwner:{Id:[I;1206053451,1105872533,-1581355730,-522689642],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTIwYjMzOGNkYTRmY2RmNzk0MmQwMTNjZjYyOWQzZjFjY2QzMGE0NmVjNDAyNmJiYzY5YjY5NjcyYjhhNjZiMyJ9fX0="}]}}}
replaceitem entity @e[tag=VicousCredits] armor.head player_head{SkullOwner:{Id:[I;-875773062,-603045543,-1440631328,854532080],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmI4N2QwYTQzZTcwYjZmMzNmM2YxY2Y1ODgwZWFjOWFkMGEzNWRkNzc1MTRjN2YxNGE2NWNhMTRlMzM0MzJiNSJ9fX0="}]}}}
replaceitem entity @e[tag=ProzanCredits] armor.head player_head{SkullOwner:{Id:[I;-801876288,1502234462,-2104772851,-1155668146],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2M2NTU4NWM4NmEzOGZlOTlmZjBjODIyZTkwNjVjMGE3MjRjYzlmZWIwYzE4NGEzMGE2ZDRjZWNhZDEyMWQ5MiJ9fX0="}]}}}
replaceitem entity @e[tag=ToulCredits] armor.head player_head{SkullOwner:{Id:[I;-75123510,-141145352,-1780581694,-279058577],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTg3NzlkYTc3MDdkMTI0MTE1MDAzODQ2NjI4MWUyM2EyNzhmMGIxNTM0NDBkODIxN2ZkMGM4NjM3ODlhZWY2OSJ9fX0="}]}}}
replaceitem entity @e[tag=IndigoCredits] armor.head player_head{SkullOwner:{Id:[I;77508527,341068226,-1812515903,222578449],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmQyM2VjYjExYWNlNWQ1NjE2ZDI3NjA0MjlhY2FlZDljMTBlMzRlNzIyYTlmOTgzMmNhN2ZhNzUwNmM1ZDRkMiJ9fX0="}]}}}
replaceitem entity @e[tag=BeardedCredits] armor.head player_head{SkullOwner:{Id:[I;1586426683,-1534375845,-1819852257,-1748144842],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzVjMTAzZGVmMjg3YWIzZGZhMzEyYjU2MmI3ODJjOGNiMzQwNWE3YmVkODhkOTI1NWY5MjE1NmZlZjlmM2EzZCJ9fX0="}]}}}
replaceitem entity @e[tag=UnWinCredits] armor.head player_head{SkullOwner:{Id:[I;435158053,1174489962,-1126197038,640235696],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllOTdmZjVlODdjNmE3ZGEyNTlkYzVlY2E3MjAzNjBhMTQ0MzA4ODhmNmY5YjljNTA1ZWY4NjU4YjU2YzE4YSJ9fX0="}]}}}
replaceitem entity @e[tag=LexCredits] armor.head player_head{SkullOwner:{Id:[I;1397243815,865880462,-1179328748,-779912640],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQyODQ3M2Y5YzkxNDk5NDkyOWVhYzMwMWQ3MTUyYWU3M2YzZTk2OTBmNDAwMjc2ZDM5YzEwNjBiMDIzMDVjIn19fQ=="}]}}}
replaceitem entity @e[tag=KadesCredits] armor.head player_head{SkullOwner:{Id:[I;1859955625,-1449311190,-1179077346,67759672],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVlMWE0YjA2MTg3YzUxNmEyN2FhODAzMTEzYTJhMWY4NGM2NDU4NGUwYThhZDczZTNhZjE3MjQwZGY3MmViZiJ9fX0="}]}}}
replaceitem entity @e[tag=DanielCredits] armor.head player_head{SkullOwner:{Id:[I;1541028911,-153203336,-2125333090,2069892953],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2UzOGM1ZWZhNzFjMzdlYWExYTU4ZTI5MDIyZjc0ZDg2YzVmZmVkMWQxOGJkNjRjYTc4YjgzZjk0YTQxNWFkMiJ9fX0="}]}}}
replaceitem entity @e[tag=CarlCredits] armor.head player_head{SkullOwner:{Id:[I;-604142915,-1598928967,-1852618402,-1499570947],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODgwZTE5Mzk0NGYzNjIxM2Y3NzhkNzQxOWZiOWQzODMyY2FlNDdhMjdlM2Q3YWY2ZGYyNmVjOWNlOTY1YmY4NCJ9fX0="}]}}}
replaceitem entity @e[tag=StoneCredits] armor.head player_head{SkullOwner:{Id:[I;-745930390,-117552509,-1127553217,1898034382],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTZkYTczNWM4OGUwOGI4MGJkZjgxNDBiMGFkZDhkMTg2OTBiODViNGY5MDI1YmI4ODFkN2ExOTEzNDBmM2IzMSJ9fX0="}]}}}
replaceitem entity @e[tag=TuijCredits] armor.head player_head{SkullOwner:{Id:[I;-1780329842,-1176025251,-2097778658,1797478120],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODI1ZThkN2JhZjU4MDY4MTQ4YjUzYzI1NDhiYTFhMjJmMTUyOWM2Njc3YTI4Y2M1MzFmMjJhZmE0YWY3NjVmYyJ9fX0="}]}}}
replaceitem entity @e[tag=JagCredits] armor.head player_head{SkullOwner:{Id:[I;1243877124,668944011,-1846606878,-42048004],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDhmMmExZjYyNDk1YTgwODE4YWQ3YjI3NzY4NDIwMDZjZjQ1M2I2YWUxMmNkMjZhNWQ5Y2M5OWNlZGQ2NGFjOCJ9fX0="}]}}}
replaceitem entity @e[tag=GroundCredits] armor.head player_head{SkullOwner:{Id:[I;-856705051,-1013035152,-1808429492,1288028117],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNTBiYzAxZWM0YTVlOTgxNjM3ZDFhZjM0MDZiZjMxZmUwYjkwNDkyZjYyZjAxZTIyMWFkN2Y2ZTMyMjViZSJ9fX0="}]}}}
replaceitem entity @e[tag=FunnyCredits] armor.head player_head{SkullOwner:{Id:[I;1490602184,710364957,-1297625916,1088393637],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjNmYzUzMWE5MDFjZWM5NjI3MzMzOGRlMjYyZmYyOTlkYTU3YWU5YTEzMGVhNjVkY2YyZDUzNDBlZjcxYzMifX19"}]}}}
replaceitem entity @e[tag=MosesCredits] armor.head player_head{SkullOwner:{Id:[I;954963977,1350257969,-1084706310,-1628615574],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDdiZTkyMjhmYTZhNWE3Yjg0YTM2MDkzODJlZmY1NmE1MjFiNTQwZTk1ZTM1MzU2ZWU2MzRkMDE5MDA1OGQ0MyJ9fX0="}]}}}
replaceitem entity @e[tag=UniverseCredits] armor.head player_head{SkullOwner:{Id:[I;-143734327,1098140837,-1806433169,684096158],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODIxNzdiMjc2ODI3YzEzMWY5OTUxMzg2MGVmMTk2NmFhNjhjMzBjMzI2MjU1NTdmY2EyMmUzNDNkZTFhNjcyMyJ9fX0="}]}}}
replaceitem entity @e[tag=CalverinCredits] armor.head player_head{SkullOwner:{Id:[I;-493048438,238569755,-2081740381,1450882223],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIwZGI5YzFiNDg1YjZhNDE0ZWU4MGFkY2RjNWFlYTkzMjhiMzYyZTJlNjExOWQ0MDVmYTQyNzQ1MGUxMzQ4ZCJ9fX0="}]}}}
replaceitem entity @e[tag=RoboCredits] armor.head player_head{SkullOwner:{Id:[I;-1752375778,1398554712,-1984963259,1329172426],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM3YjExM2UxOTRhODM1MTk0ODE1ZDAxYjQ4NmY1MjIxN2UzNTdlYWU2M2E5NzgxMzk0ZDBmYWEzNWNhNWFmZiJ9fX0="}]}}}
replaceitem entity @e[tag=ZoruaCredits] armor.head player_head{SkullOwner:{Id:[I;615255622,674120226,-1419628215,1446139650],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVjYzgwZDQxZjYwN2JmYjQ5YzFiMWE0MjZkZWFhYWRjOTg1NmU3MDU0M2U5MTA4NGMxMGE0NGU1ODM0Mzk5NyJ9fX0="}]}}}
replaceitem entity @e[tag=LizzeCredits] armor.head player_head{SkullOwner:{Id:[I;56983915,816072400,-1606937348,2004866438],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTIyMzJhZGEyYThmN2U3YWZhZGRmZjE0MDQ1YmU5YWM4MDI2NWQ2NWFmODlmYzBhYWEzMjJiZjcwNjRlYTI2In19fQ=="}]}}}
replaceitem entity @e[tag=TNTCredits] armor.head player_head{SkullOwner:{Id:[I;1981396281,-1000455627,-1979415982,-863965397],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjNhZDY2MjliNWEyMGYxNjk3OTIwMWVhZDk0ZGQxM2JkMDhjMTFmOWQwNzk0NDdiMTI5NGE3YzUyOTdkMjY1ZCJ9fX0="}]}}}
replaceitem entity @e[tag=RangerCredits] armor.head player_head{SkullOwner:{Id:[I;1842709856,1964657015,-1715766241,680393701],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Y5ZmQ2ODA4ZjA1NTM3NGIwYWNjNWFlN2ZlMDQ5ZGRiNDRkZDhmNzNjMTJiYjk2NGRjZDgyNjc3MjUyNzA1YyJ9fX0="}]}}}
replaceitem entity @e[tag=EraCredits] armor.head player_head{SkullOwner:{Id:[I;1628897187,-568901311,-1808589004,447747123],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2YyODkzZGI1ZTJhZTI3NjE3ZmI1YjczMGMxMmU5ZTU5OTY2NWVjYmU0NzU5MTQwYmMzNzI1MGY4MzY1YmQ5ZSJ9fX0="}]}}}
replaceitem entity @e[tag=CagCredits] armor.head player_head{SkullOwner:{Id:[I;221051748,-1053081578,-1288252233,-1822947344],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFiNWJlYWRmMjEyY2I0NzRkY2Y2N2Y4YzVmMzNmNWYwNWZmYTc4YjRjNjllNjBlMjhjZTNjOTYxODRiODg1MSJ9fX0="}]}}}
replaceitem entity @e[tag=LlewCredits] armor.head player_head{SkullOwner:{Id:[I;211655507,-1209580195,-2051772806,-1037837861],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjMwNjMxNmFhMTMyMGQxYTMyYWU4ZDllNTEwYzE3MmFiOGE3ZjdiNDkyZjlkNjcwNjFkMzQ1MzVkNTk1ZjJmNCJ9fX0="}]}}}
replaceitem entity @e[tag=LekroCredits] armor.head player_head{SkullOwner:{Id:[I;1138515368,-854701807,-1809705417,1291084670],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmVlNTVhOTBlYzI1NGI3Yzc3YjU3MDNmMjVhMTQ0ZmVmMDJjNmExZWFiZDc2ZjkwYTI5ZDY3N2ZmZjRmYTg1MyJ9fX0="}]}}}

scoreboard objectives add CreditCycle dummy
tag @e[tag=creditsAS] remove SelectedCredit

tag @e[tag=CalverinCredits] add SelectedCredit