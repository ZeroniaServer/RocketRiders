#################################################################
## INITIALIZE:Resets to the first set of Credits armor stands ##
#################################################################

#Initial stuff
kill @e[x=0,type=armor_stand,tag=creditsAS,tag=!devcycle]
kill @e[x=0,type=area_effect_cloud,tag=CreditName]
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noPlayerCredits
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] creditsSet 0

#First half of testers/helpers
summon armor_stand -51 211 72 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KurCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 71 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CarsCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 70 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MaartCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 69 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DrakanCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 68 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DarkCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 67 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AusCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 66 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AlexCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 65 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","EonCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 64 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","JohnCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 63 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SwagCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 62 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","AdamCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 84 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","ProzanCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 85 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CubeCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 86 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RubixCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 87 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LemonCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 88 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LogicCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 89 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SamCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 90 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","FuriousCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 91 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","PinguCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 92 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","TopazCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 93 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KapaCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 94 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","VicousCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 61 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SirsCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 60 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","IndigoCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 59 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","BeardedCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 58 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SammyCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 57 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","YlvaCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 56 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","SkytesCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 55 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","StoneCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 54 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","DevonCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 53 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","RoboCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 52 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","BlueSkyCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 51 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","ImmoCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 95 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","GroundCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 96 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","FunnyCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 97 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","MosesCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 98 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","ZoruaCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 99 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CagCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 100 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","LlewCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 101 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","UnWinCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 102 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","CalverinCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -52 211 103 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","KaisCredits"],Silent:1b,Rotation:[90.0f,0.0f]}

#Pose and armor
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.chest with leather_chestplate[dyed_color=65397]
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.legs with leather_leggings[dyed_color=65397]
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.feet with leather_boots[dyed_color=13784063]

#Skulls
item replace entity @e[x=0,type=armor_stand,tag=KurCredits] armor.head with player_head[profile={id:[I;792258152,2116305022,-1420945463,-774886177]}]
item replace entity @e[x=0,type=armor_stand,tag=CarsCredits] armor.head with player_head[profile={id:[I;-2115427186,1686717511,-1452685824,-1961403014]}]
item replace entity @e[x=0,type=armor_stand,tag=MaartCredits] armor.head with player_head[profile={id:[I;-1247420946,-2069280904,-2002244391,-374090384]}]
item replace entity @e[x=0,type=armor_stand,tag=DrakanCredits] armor.head with player_head[profile={id:[I;-1884718345,33308723,-1752614928,1704364141]}]
item replace entity @e[x=0,type=armor_stand,tag=AusCredits] armor.head with player_head[profile={id:[I;1911502970,-941537187,-1893052560,1647318788]}]
item replace entity @e[x=0,type=armor_stand,tag=AlexCredits] armor.head with player_head[profile={id:[I;1220660753,1009600609,-1285375521,-726726434]}]
item replace entity @e[x=0,type=armor_stand,tag=EonCredits] armor.head with player_head[profile={id:[I;1832811442,-748731320,-1791395029,-339630327]}]
item replace entity @e[x=0,type=armor_stand,tag=JohnCredits] armor.head with player_head[profile={id:[I;433687075,1232227436,-1640313011,-756262477]}]
item replace entity @e[x=0,type=armor_stand,tag=SwagCredits] armor.head with player_head[profile={id:[I;-790738534,-1002290332,-1248673953,542833662]}]
item replace entity @e[x=0,type=armor_stand,tag=DarkCredits] armor.head with player_head[profile={id:[I;45160184,-15318698,-1385941313,776192017]}]
item replace entity @e[x=0,type=armor_stand,tag=ProzanCredits] armor.head with player_head[profile={id:[I;-45892403,-1837675425,-1581247426,1570764964]}]
item replace entity @e[x=0,type=armor_stand,tag=CubeCredits] armor.head with player_head[profile={id:[I;369097774,-880915601,-2004192365,-615086078]}]
item replace entity @e[x=0,type=armor_stand,tag=RubixCredits] armor.head with player_head[profile={id:[I;-1497019610,-851686484,-1207835670,-2146288524]}]
item replace entity @e[x=0,type=armor_stand,tag=LemonCredits] armor.head with player_head[profile={id:[I;-850414499,-884060641,-1109226120,1707192367]}]
item replace entity @e[x=0,type=armor_stand,tag=LogicCredits] armor.head with player_head[profile={id:[I;-271757952,288574441,-1695078818,-1299880464]}]
item replace entity @e[x=0,type=armor_stand,tag=SamCredits] armor.head with player_head[profile={id:[I;2008955584,-1205320488,-2120024146,-1896937206]}]
item replace entity @e[x=0,type=armor_stand,tag=FuriousCredits] armor.head with player_head[profile={id:[I;-1984072827,-1195360251,-1507064693,-1518215649]}]
item replace entity @e[x=0,type=armor_stand,tag=PinguCredits] armor.head with player_head[profile={id:[I;340870686,-490517139,-1411588723,460757502]}]
item replace entity @e[x=0,type=armor_stand,tag=TopazCredits] armor.head with player_head[profile={id:[I;-1436811780,-2035399188,-1521389934,1018867797]}]
item replace entity @e[x=0,type=armor_stand,tag=KapaCredits] armor.head with player_head[profile={id:[I;1358464220,545211949,-1333404916,699050519]}]
item replace entity @e[x=0,type=armor_stand,tag=AdamCredits] armor.head with player_head[profile={id:[I;92008378,-1530772159,-1357200544,1353903126]}]
item replace entity @e[x=0,type=armor_stand,tag=VicousCredits] armor.head with player_head[profile={id:[I;124215173,770982568,-1446337624,1415144270]}]
item replace entity @e[x=0,type=armor_stand,tag=SirsCredits] armor.head with player_head[profile={id:[I;-2067211982,-256687816,-1665501268,281138822]}]
item replace entity @e[x=0,type=armor_stand,tag=IndigoCredits] armor.head with player_head[profile={id:[I;1504533075,1869431654,-1116661878,889791852]}]
item replace entity @e[x=0,type=armor_stand,tag=BeardedCredits] armor.head with player_head[profile={id:[I;1015756583,-1247261094,-2060433374,-1495290288]}]
item replace entity @e[x=0,type=armor_stand,tag=UnWinCredits] armor.head with player_head[profile={id:[I;-1515280125,-560510408,-1622614347,556787332]}]
item replace entity @e[x=0,type=armor_stand,tag=SammyCredits] armor.head with player_head[profile={id:[I;1317066630,2006140595,-2111873791,2048858512]}]
item replace entity @e[x=0,type=armor_stand,tag=YlvaCredits] armor.head with player_head[profile={id:[I;-1683666142,1275152223,-2047732367,1077468119]}]
item replace entity @e[x=0,type=armor_stand,tag=SkytesCredits] armor.head with player_head[profile={id:[I;607654191,32394985,-1880749043,889031868]}]
item replace entity @e[x=0,type=armor_stand,tag=StoneCredits] armor.head with player_head[profile={id:[I;1941420693,-1305722781,-1281288999,-736917081]}]
item replace entity @e[x=0,type=armor_stand,tag=DevonCredits] armor.head with player_head[profile={id:[I;909585878,1685734722,-1429926774,-1746354183]}]
item replace entity @e[x=0,type=armor_stand,tag=GroundCredits] armor.head with player_head[profile={id:[I;-1718101038,725372544,-1826799540,343536146]}]
item replace entity @e[x=0,type=armor_stand,tag=FunnyCredits] armor.head with player_head[profile={id:[I;-789712435,-177454313,-1799622369,-292281383]}]
item replace entity @e[x=0,type=armor_stand,tag=MosesCredits] armor.head with player_head[profile={id:[I;-386571123,-1094955571,-2003588521,-1028839450]}]
item replace entity @e[x=0,type=armor_stand,tag=BlueSkyCredits] armor.head with player_head[profile={id:[I;1354379992,-1395376077,-2145585717,-1393764276]}]
item replace entity @e[x=0,type=armor_stand,tag=ImmoCredits] armor.head with player_head[profile={id:[I;1461080669,-979285636,-2087811218,1944484357]}]
item replace entity @e[x=0,type=armor_stand,tag=CalverinCredits] armor.head with player_head[profile={id:[I;-2143605163,1080772972,-1926888450,1337878828]}]
item replace entity @e[x=0,type=armor_stand,tag=RoboCredits] armor.head with player_head[profile={id:[I;-1971180136,1826442860,-1981037132,47305403]}]
item replace entity @e[x=0,type=armor_stand,tag=ZoruaCredits] armor.head with player_head[profile={id:[I;-797801134,246236178,-1749996157,-842278413]}]
item replace entity @e[x=0,type=armor_stand,tag=CagCredits] armor.head with player_head[profile={id:[I;-402680163,-1793699941,-1323279850,-1157979685]}]
item replace entity @e[x=0,type=armor_stand,tag=LlewCredits] armor.head with player_head[profile={id:[I;1759334166,-323600035,-1652589849,1665750649]}]
item replace entity @e[x=0,type=armor_stand,tag=KaisCredits] armor.head with player_head[profile={id:[I;1725190082,-1232318916,-2090540718,1753098717]}]

#Selected tags
tag @e[x=0,type=armor_stand,tag=creditsAS] remove SelectedCredit
tag @e[x=0,type=armor_stand,tag=KaisCredits] add SelectedCredit

#Disable slots
execute as @e[x=0,type=armor_stand,tag=creditsAS] run data merge entity @s {DisabledSlots:4144959}