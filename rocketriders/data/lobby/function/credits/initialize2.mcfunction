###################################################################
## INITIALIZE2:Resets to the second set of Credits armor stands ##
###################################################################

#Initial stuff
kill @e[x=0,type=armor_stand,tag=creditsAS,tag=!devcycle]
kill @e[x=0,type=area_effect_cloud,tag=CreditName]
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noPlayerCredits
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] creditsSet 1

#Second half of testers/helpers
summon armor_stand -51 211 72 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","GriffenCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 71 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SkyCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 70 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LexCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 69 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KadesCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 68 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","PeasntCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 67 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LizzeCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 66 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TNTCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 65 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RangerCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 64 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","EraCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 63 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LekroCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 62 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DurovCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 84 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AztechCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 85 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","XeoCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 86 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","PlayingCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 87 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DanielCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 88 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CarlCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 89 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TuijCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 90 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","JagCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 91 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MaxCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 92 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","HarpCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 93 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","UniverseCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 94 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MichalCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 61 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RedstoneCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 60 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","YankeeCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 59 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TallCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 58 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","OceanCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 57 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MaeplCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 56 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","HrapCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 55 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LimeyCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 54 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AnonCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 53 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MiloCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 52 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LouCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 51 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","NyxCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 95 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RubenCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 96 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TacoCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 97 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LPCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 98 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SkoolCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 99 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","EnatorCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 100 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AgroCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 101 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","NettaCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 102 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DangerCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 103 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","EvieCredits"],Silent:1b,Rotation:[90.0f,0.0f]}

#Pose and armor
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.chest with leather_chestplate[dyed_color=65397]
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.legs with leather_leggings[dyed_color=65397]
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.feet with leather_boots[dyed_color=13784063]

#Skulls
item replace entity @e[x=0,type=armor_stand,tag=GriffenCredits] armor.head with player_head[profile={id:[I;-872895356,1397705337,-1882880271,-875238577]}]
item replace entity @e[x=0,type=armor_stand,tag=SkyCredits] armor.head with player_head[profile={id:[I;-1318620964,842026847,-1965745454,1679158485]}]
item replace entity @e[x=0,type=armor_stand,tag=LexCredits] armor.head with player_head[profile={id:[I;-505273339,1708215197,-1626691800,-994270756]}]
item replace entity @e[x=0,type=armor_stand,tag=KadesCredits] armor.head with player_head[profile={id:[I;699767794,2022785682,-1076883552,-801036482]}]
item replace entity @e[x=0,type=armor_stand,tag=PeasntCredits] armor.head with player_head[profile={id:[I;-2023359903,-1248571738,-1540082281,-1332532355]}]
item replace entity @e[x=0,type=armor_stand,tag=LizzeCredits] armor.head with player_head[profile={id:[I;-871899996,2127642843,-1457987412,-752034962]}]
item replace entity @e[x=0,type=armor_stand,tag=TNTCredits] armor.head with player_head[profile={id:[I;-835275994,117064947,-1642585462,157375651]}]
item replace entity @e[x=0,type=armor_stand,tag=RangerCredits] armor.head with player_head[profile={id:[I;291084111,1823100279,-1885228405,-130687132]}]
item replace entity @e[x=0,type=armor_stand,tag=EraCredits] armor.head with player_head[profile={id:[I;87625685,-1772860664,-1624523385,1976319842]}]
item replace entity @e[x=0,type=armor_stand,tag=LekroCredits] armor.head with player_head[profile={id:[I;212719589,-574406373,-1920831306,113804860]}]
item replace entity @e[x=0,type=armor_stand,tag=DurovCredits] armor.head with player_head[profile={id:[I;450263440,-1513405247,-1198694375,1590165257]}]
item replace entity @e[x=0,type=armor_stand,tag=AztechCredits] armor.head with player_head[profile={id:[I;1207585748,-1634187597,-1175559498,2009978718]}]
item replace entity @e[x=0,type=armor_stand,tag=XeoCredits] armor.head with player_head[profile={id:[I;-464281933,-1651423823,-1099888908,1190718353]}]
item replace entity @e[x=0,type=armor_stand,tag=PlayingCredits] armor.head with player_head[profile={id:[I;874963959,-1469824575,-1331447189,1490701757]}]
item replace entity @e[x=0,type=armor_stand,tag=DanielCredits] armor.head with player_head[profile={id:[I;-1857085980,721833562,-2073627670,1395338859]}]
item replace entity @e[x=0,type=armor_stand,tag=CarlCredits] armor.head with player_head[profile={id:[I;1225351721,-1547023515,-1307458560,665727025]}]
item replace entity @e[x=0,type=armor_stand,tag=TuijCredits] armor.head with player_head[profile={id:[I;-1828311487,1194610668,-1142125884,1365549465]}]
item replace entity @e[x=0,type=armor_stand,tag=JagCredits] armor.head with player_head[profile={id:[I;-2145718206,1756906297,-1644224287,-1243095085]}]
item replace entity @e[x=0,type=armor_stand,tag=MaxCredits] armor.head with player_head[profile={id:[I;-1089693253,-871872786,-1426984075,317693186]}]
item replace entity @e[x=0,type=armor_stand,tag=HarpCredits] armor.head with player_head[profile={id:[I;-939320725,1062227009,-1209318922,1838771912]}]
item replace entity @e[x=0,type=armor_stand,tag=UniverseCredits] armor.head with player_head[profile={id:[I;1608202283,-1847703541,-1197063161,-595527819]}]
item replace entity @e[x=0,type=armor_stand,tag=MichalCredits] armor.head with player_head[profile={id:[I;-1084710278,1676231168,-1887994899,-2063320883]}]
item replace entity @e[x=0,type=armor_stand,tag=RedstoneCredits] armor.head with player_head[profile={id:[I;-178473577,-2054994616,-2060385463,-1034762023]}]
item replace entity @e[x=0,type=armor_stand,tag=YankeeCredits] armor.head with player_head[profile={id:[I;-428718472,-393458958,-1320514477,733123103]}]
item replace entity @e[x=0,type=armor_stand,tag=TallCredits] armor.head with player_head[profile={id:[I;1028074347,-1405270038,-1686529864,-1913135465]}]
item replace entity @e[x=0,type=armor_stand,tag=OceanCredits] armor.head with player_head[profile={id:[I;1954794369,313411711,-1590042633,-381095343]}]
item replace entity @e[x=0,type=armor_stand,tag=MaeplCredits] armor.head with player_head[profile={id:[I;-201261119,-296072684,-2094099060,-1814313625]}]
item replace entity @e[x=0,type=armor_stand,tag=HrapCredits] armor.head with player_head[profile={id:[I;-1776062794,1834700741,-1329551729,-1224130306]}]
item replace entity @e[x=0,type=armor_stand,tag=LimeyCredits] armor.head with player_head[profile={id:[I;-1698829749,-203863851,-1340413804,-1602787823]}]
item replace entity @e[x=0,type=armor_stand,tag=AnonCredits] armor.head with player_head[profile={id:[I;-530326310,466698430,-1915559633,1928318723]}]
item replace entity @e[x=0,type=armor_stand,tag=MiloCredits] armor.head with player_head[profile={id:[I;1723764045,1780107696,-1939465585,45278583]}]
item replace entity @e[x=0,type=armor_stand,tag=LouCredits] armor.head with player_head[profile={id:[I;-1968733147,1346257045,-1533993327,-445288004]}]
item replace entity @e[x=0,type=armor_stand,tag=NyxCredits] armor.head with player_head[profile={id:[I;1729318232,31278004,-1558177398,1574736551]}]
item replace entity @e[x=0,type=armor_stand,tag=RubenCredits] armor.head with player_head[profile={id:[I;-1090724012,218844591,-1087910819,2073617187]}]
item replace entity @e[x=0,type=armor_stand,tag=TacoCredits] armor.head with player_head[profile={id:[I;918761189,-906344272,-1574688922,-2115630313]}]
item replace entity @e[x=0,type=armor_stand,tag=LPCredits] armor.head with player_head[profile={id:[I;1437961081,850739945,-1516006038,741289532]}]
item replace entity @e[x=0,type=armor_stand,tag=SkoolCredits] armor.head with player_head[profile={id:[I;993183355,1830110909,-1864516489,1996099611]}]
item replace entity @e[x=0,type=armor_stand,tag=EnatorCredits] armor.head with player_head[profile={id:[I;-1167401813,1623150532,-1884207194,737725310]}]
item replace entity @e[x=0,type=armor_stand,tag=AgroCredits] armor.head with player_head[profile={id:[I;-1100583911,820332041,-1556760794,-1518272252]}]
item replace entity @e[x=0,type=armor_stand,tag=NettaCredits] armor.head with player_head[profile={id:[I;1303758039,87311151,-1378004137,-665744856]}]
item replace entity @e[x=0,type=armor_stand,tag=DangerCredits] armor.head with player_head[profile={id:[I;65190869,2142915758,-1814668026,165811891]}]
item replace entity @e[x=0,type=armor_stand,tag=EvieCredits] armor.head with player_head[profile={id:[I;-1452675702,-1245689991,-1816205097,-1554337083]}]

#Selected tags
tag @e[x=0,type=armor_stand,tag=creditsAS] remove SelectedCredit
tag @e[x=0,type=armor_stand,tag=EvieCredits] add SelectedCredit

#Disable slots
execute as @e[x=0,type=armor_stand,tag=creditsAS] run data merge entity @s {DisabledSlots:4144959}