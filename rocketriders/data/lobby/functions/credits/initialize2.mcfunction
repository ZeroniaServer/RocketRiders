###################################################################
## INITIALIZE2: Resets to the second set of Credits armor stands ##
###################################################################

#Initial stuff
kill @e[tag=creditsAS,tag=!devcycle,type=armor_stand]
kill @e[tag=CreditName,type=area_effect_cloud]
tag @e[tag=Selection,type=armor_stand,limit=1] remove noPlayerCredits
scoreboard players set @e[tag=Selection,type=armor_stand,limit=1] creditsSet 1

#Second half of testers/helpers
summon armor_stand -51 211 73 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","PeasntCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 72 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KaisCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 71 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","GriffenCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 70 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SkyCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 69 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LexCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 68 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KadesCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 67 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LizzeCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 66 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TNTCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 65 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RangerCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 64 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","EraCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 63 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LekroCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 62 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DurovCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 83 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","NyxCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 84 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AztechCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 85 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","XeoCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 86 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","PlayingCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 87 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DanielCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 88 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CarlCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 89 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TuijCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 90 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","JagCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 91 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MaxCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 92 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","BlockyCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 93 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","UniverseCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 94 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MichalCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 61 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RedstoneCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 60 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","YankeeCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 59 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TallCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 58 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","OceanCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 57 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MaeplCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 56 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","HrapCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 55 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LimeyCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 54 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AnonCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 53 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MiloCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 52 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LouCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 95 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RubenCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 96 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TacoCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 97 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LPCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 98 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SkoolCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 99 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","EnatorCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 100 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AgroCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 101 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","NettaCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -52 211 102 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DangerCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}

#Pose and armor
replaceitem entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,type=armor_stand] armor.chest leather_chestplate{display:{color:65397}}
replaceitem entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,type=armor_stand] armor.legs leather_leggings{display:{color:65397}}
replaceitem entity @e[tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,type=armor_stand] armor.feet leather_boots{display:{color:13784063}}

#Skulls
replaceitem entity @e[tag=KaisCredits,type=armor_stand] armor.head player_head{SkullOwner:Kaisheng21}
replaceitem entity @e[tag=GriffenCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1182292693,-2127412096,-1484639685,-1984768555],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjQ3OTU0MTQ0MTNiNzAyODUwMWMzMzBmNmZjOGEzM2I1NTZmYzI4MTdiNzEyNmRlMGVlNGZjMWZiODc5NzFiOCJ9fX0="}]}}}
replaceitem entity @e[tag=SkyCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1206053451,1105872533,-1581355730,-522689642],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTIwYjMzOGNkYTRmY2RmNzk0MmQwMTNjZjYyOWQzZjFjY2QzMGE0NmVjNDAyNmJiYzY5YjY5NjcyYjhhNjZiMyJ9fX0="}]}}}
replaceitem entity @e[tag=LexCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1397243815,865880462,-1179328748,-779912640],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQyODQ3M2Y5YzkxNDk5NDkyOWVhYzMwMWQ3MTUyYWU3M2YzZTk2OTBmNDAwMjc2ZDM5YzEwNjBiMDIzMDVjIn19fQ=="}]}}}
replaceitem entity @e[tag=KadesCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1859955625,-1449311190,-1179077346,67759672],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVlMWE0YjA2MTg3YzUxNmEyN2FhODAzMTEzYTJhMWY4NGM2NDU4NGUwYThhZDczZTNhZjE3MjQwZGY3MmViZiJ9fX0="}]}}}
replaceitem entity @e[tag=PeasntCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1890837776,-1725611751,-1490838896,-908167322],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTE5Y2Y4MTZhNzU1M2I5MjQ4OTNiMTY2MjZjZWRlMzkyMDMxN2I5ODc2NWVkOTBjMzk3ODZjMGVmMTAxNjM3NiJ9fX0="}]}}}
replaceitem entity @e[tag=LizzeCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;56983915,816072400,-1606937348,2004866438],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTIyMzJhZGEyYThmN2U3YWZhZGRmZjE0MDQ1YmU5YWM4MDI2NWQ2NWFmODlmYzBhYWEzMjJiZjcwNjRlYTI2In19fQ=="}]}}}
replaceitem entity @e[tag=TNTCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1981396281,-1000455627,-1979415982,-863965397],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjNhZDY2MjliNWEyMGYxNjk3OTIwMWVhZDk0ZGQxM2JkMDhjMTFmOWQwNzk0NDdiMTI5NGE3YzUyOTdkMjY1ZCJ9fX0="}]}}}
replaceitem entity @e[tag=RangerCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1842709856,1964657015,-1715766241,680393701],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Y5ZmQ2ODA4ZjA1NTM3NGIwYWNjNWFlN2ZlMDQ5ZGRiNDRkZDhmNzNjMTJiYjk2NGRjZDgyNjc3MjUyNzA1YyJ9fX0="}]}}}
replaceitem entity @e[tag=EraCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1628897187,-568901311,-1808589004,447747123],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2YyODkzZGI1ZTJhZTI3NjE3ZmI1YjczMGMxMmU5ZTU5OTY2NWVjYmU0NzU5MTQwYmMzNzI1MGY4MzY1YmQ5ZSJ9fX0="}]}}}
replaceitem entity @e[tag=LekroCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1138515368,-854701807,-1809705417,1291084670],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmVlNTVhOTBlYzI1NGI3Yzc3YjU3MDNmMjVhMTQ0ZmVmMDJjNmExZWFiZDc2ZjkwYTI5ZDY3N2ZmZjRmYTg1MyJ9fX0="}]}}}
replaceitem entity @e[tag=DurovCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1755438199,240339421,-1927948087,1854918551],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2VkMzYwOTdmY2JjOWU3YTY0MTlmNDFiY2E3MzdlNzhlNzRiZjViNzVjYzNlMTczNDU2ZTdiODM0N2RhMzlmZCJ9fX0="}]}}}
replaceitem entity @e[tag=NyxCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;895406143,-587380272,-1754673279,-1715897467],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMzYzQ5NGQwYWFlMGY2OTFmZjNkOThmY2I1ZWE4YThiZTFmZTk5MzhiODczM2Y1YTNjYTYyOWIyMjhhNGVkZSJ9fX0="}]}}}
replaceitem entity @e[tag=AztechCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-656477307,-1891088734,-1715909072,-669991786],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODNhYTUxYjU5NDA0MjZmMDkxNDNiYjZkOGJjYjhjZjBhZjcxMjU5M2MwN2U0ZTIyOGJjYmQyYWZlMjg0MWIyZSJ9fX0="}]}}}
replaceitem entity @e[tag=XeoCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1063339226,-608286499,-1590628907,-205456849],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjkxZWQzY2Q1MzEwYzQ4ZjllN2UwMWVlY2MxYjE2M2FkZGIzZWIxNjAyMjk3ZThlOTkwYzhlNGJiY2ExODE4OCJ9fX0="}]}}}
replaceitem entity @e[tag=PlayingCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-814423810,-970439484,-1270782693,-1276167004],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmNhNDI2MTRhZWRhZDM0ZTkyMjlhMWY3OTVjZjVlNjhhN2FjMTVkMTFkYjk1YTM2MDA5NTAyNjQwY2UzYmNmYSJ9fX0="}]}}}
replaceitem entity @e[tag=DanielCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1894685507,-521253904,-1827869181,-1174840859],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDNjMWQ2ZDBlNzk5ZTBlOGNkZWQyMTM2N2UyZDQ4NDQ5MGU3MjRkMTFjY2ZkMzc3ZTkwOTgxZGYyMjg4OTg5MiJ9fX0="}]}}}
replaceitem entity @e[tag=CarlCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;2136597454,1291010936,-1150754734,-1247452035],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODgwZTE5Mzk0NGYzNjIxM2Y3NzhkNzQxOWZiOWQzODMyY2FlNDdhMjdlM2Q3YWY2ZGYyNmVjOWNlOTY1YmY4NCJ9fX0="}]}}}
replaceitem entity @e[tag=TuijCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-32441473,252134651,-1950052671,269626902],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODI1ZThkN2JhZjU4MDY4MTQ4YjUzYzI1NDhiYTFhMjJmMTUyOWM2Njc3YTI4Y2M1MzFmMjJhZmE0YWY3NjVmYyJ9fX0="}]}}}
replaceitem entity @e[tag=JagCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1200395546,417680220,-1547807868,-393605921],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDhmMmExZjYyNDk1YTgwODE4YWQ3YjI3NzY4NDIwMDZjZjQ1M2I2YWUxMmNkMjZhNWQ5Y2M5OWNlZGQ2NGFjOCJ9fX0="}]}}}
replaceitem entity @e[tag=MaxCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;582542492,-45399808,-2093469607,2018051984],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGJhZWVmMGRiOGM0ZWUwNTVjNWVhNDI3OWRkMTc0ZmQ4M2RiMDg3YzUyZWQyZjUwNzYzYTc2MWFmYjM0MDAxYSJ9fX0="}]}}}
replaceitem entity @e[tag=BlockyCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1792793968,-822065492,-1579448131,-1672258558],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjA2MzU1YWIwZWY4NGI4ZTg1NDk2ZDZlMTllNWU2ZDRhYTg5Mjg4YjI2Y2NkYTUzNzA0OTlmZDdkZWQ3ZmY2MiJ9fX0="}]}}}
replaceitem entity @e[tag=UniverseCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;550041762,-2132915968,-2025230650,1120648213],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODIxNzdiMjc2ODI3YzEzMWY5OTUxMzg2MGVmMTk2NmFhNjhjMzBjMzI2MjU1NTdmY2EyMmUzNDNkZTFhNjcyMyJ9fX0="}]}}}
replaceitem entity @e[tag=MichalCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1824314888,1626096697,-1976154710,1209128698],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQ2MDU2MmI3MTJlNDc4Mjk2OGJkNDUxNDAyMTkxMTlmZDY5NjA1Y2RiN2E3ZWYyYTgwMmFjZDAxYmZiMDJmMSJ9fX0="}]}}}
replaceitem entity @e[tag=RedstoneCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1573254927,2097694262,-1440808410,-1230035063],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJjYWIwM2ZiYmI2ZDVlNDBhMWZjNGQxYThkMDU0YTYwNDg5YmQxNWMwNGY5YjYzMjhhMGQ0YTQ4NzA3YjA5MyJ9fX0="}]}}}
replaceitem entity @e[tag=YankeeCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1289832857,-939635207,-1359509607,1104914587],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjM0ZTExOWJhN2Q0NzdiOWY3MmY5MjQyNDYxMGMzZmUxMzYwMWU3YjYwNTVmNjgyNDkxZmM1OTY1NGNjNWY3NyJ9fX0="}]}}}
replaceitem entity @e[tag=TallCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;386774738,254298872,-1412594482,1102525218],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmNkMzUxMjFhOTJjMDI5ZWZiNjliYWJiNzk1NmYyNDdmNGE1MzYwYjFmMWE0MjhiNWMwZjNjNzRjMzg1MmIyNSJ9fX0="}]}}}
replaceitem entity @e[tag=OceanCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1640584673,-1486992601,-1456459453,1882218684],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjllYTM0NzM5MDMzZjc2OTAzODk1MWI4MjY1YjJjYmMwNjlhNjE1N2FhMmVjNzc2MThjNzVkYTdlZjRiYzNiYyJ9fX0="}]}}}
replaceitem entity @e[tag=MaeplCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-271354648,-1958000950,-1692421175,-1804681264],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJiNmQ1YzhmNTcyYWI2NTMxNjJhYTUxZDBmZTBlMTRhZTQ1ODJiYTMzNWNlZmMwOTdiMTFmZTUxZjhlMGYyIn19fQ=="}]}}}
replaceitem entity @e[tag=HrapCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-221003171,-2099032964,-1673504797,-1881589070],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjczZTAzZDUzNjAyYzJkOTIwYTJmZDU5YmNjMWNlOTRiYjkxZTczNzM5Y2UxZjczMjBmYmRiMWYxODlmMTA5MSJ9fX0="}]}}}
replaceitem entity @e[tag=LimeyCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-367731288,1320439506,-1973725467,-1125337742],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2NhZmMyMzQ0ZDczMzhiM2FiY2QwOWQ2YWFmNDZhMDlmMTExMWZmZTI0MzU3YmYzZGMyM2VmYTNjZjcxZWQ2NCJ9fX0="}]}}}
replaceitem entity @e[tag=AnonCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;330122682,978079447,-1879264937,-999165062],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTBhY2EwOTk5ZTczYjMzYWRlYzk3MzRjOTkwNDgxNjQyMGU4MTgxZTVmZmJjZjdhN2JiNTljOGIyZDk4Mzg1YyJ9fX0="}]}}}
replaceitem entity @e[tag=MiloCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;472554298,-6403212,-1962308875,1084816177],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjg2OWRjNzBhNzJlZTJhYzRjYTg0MDE4NDk2NjEwNjAyZjE2OWQxNmFhMTE3NGVmYjgyYjg4NDRhZDYwNTZmMSJ9fX0="}]}}}
replaceitem entity @e[tag=LouCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1910675514,572604929,-1498779244,-1618324324],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFlNGUzMTM3NzZkY2M4NTRkMDY3YTlhMjMzYjAyOWZlNTlmYzE5ZWIyZGMyYWEyZWM5ZjQwOTFjMDg1MTg1ZiJ9fX0="}]}}}
replaceitem entity @e[tag=RubenCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-935118526,-1579990077,-2063427919,749753652],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmFhYzAwMzRlODg3NWYxNzUzNzMzNjk2ZTc4YmY0YTA1N2MxM2UyYzE1NjQxMTllMWUwZDYzNDcwZmJlZjc0NCJ9fX0="}]}}}
replaceitem entity @e[tag=TacoCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;159853917,102254176,-1277887679,-343464365],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzBkODc2MGVlNzQxNWFjMmY3YTg0NDA5NjFmOWVkMGE5YTZkYTY2MWMzMWEyZjVlNjgzYzNhYzlmZTY2NmI3In19fQ=="}]}}}
replaceitem entity @e[tag=LPCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;788766983,1391480339,-1441960925,226083692],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2JiMzJhZTMwY2MyZTY4ODc2MzU4NDAxYjliMjc4ZGMwZTYxM2UzNWYxOTU0ZDVmY2U1NmZmM2YwZjQ4ZTJkZSJ9fX0="}]}}}
replaceitem entity @e[tag=SkoolCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1171631848,-871740795,-1123027120,-1607910723],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTQ3OGRkZTJiMDBmMGJiOGU1ZDhmMDBhMzQyYzcxMzc2NzI3MTA4YjgzZjMzMzM5MGNmZmM5YjlmZTg0NjlkZCJ9fX0="}]}}}
replaceitem entity @e[tag=EnatorCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1511325644,178667906,-1157786243,710637934],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM0MTc0NjAyMjYxNzM4NTQxZjc3YjdhNTRmYTMwNDE5ZGU2NTY2ZGM2MjZmOGIwNTQ3Y2MyODBjNDc2ZTcyYiJ9fX0="}]}}}
replaceitem entity @e[tag=AgroCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-2119445273,-264812047,-1990698000,-774313361],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWMwNWQwNDVjY2MwOGExY2M0M2M1NWExODhiYmEwMTg4NjQyY2M4MjU3ZDEyODNmNWU4YTAxMGYwYWQyYWZhZSJ9fX0="}]}}}
replaceitem entity @e[tag=NettaCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-2004549307,-1415623697,-1789063743,851302174],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGUxZTJjMjhlMThhZjQ5OThkYjk3YzYzYmY2YjViNmRjNDA5MTY3NjdjYmFmNWIwYTAwZTU4MzJiZDlhZDVmZiJ9fX0="}]}}}
replaceitem entity @e[tag=DangerCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1961330372,2050246340,-1251875607,-304843519],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJiNTYyNTkwMDE1YWQwZDYxMTgwNzhmNThmMmU5OTU4OGQzYmVlZWY1YjgxNTEzYzJhMTMyNzc4ZTBlZWE5NSJ9fX0="}]}}}

#Selected tags
tag @e[tag=creditsAS,type=armor_stand] remove SelectedCredit
tag @e[tag=DangerCredits,type=armor_stand] add SelectedCredit