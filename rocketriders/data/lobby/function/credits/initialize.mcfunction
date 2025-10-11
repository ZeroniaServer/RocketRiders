#################################################################
## INITIALIZE:Resets to the first set of Credits armor stands ##
#################################################################

#Initial stuff
kill @e[x=0,type=armor_stand,tag=creditsAS,tag=!devcycle]
kill @e[x=0,type=area_effect_cloud,tag=CreditName]
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noPlayerCredits
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] creditsSet 0

#First half of testers/helpers
summon armor_stand -51 211 72 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","KurCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 71 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","CarsCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 70 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","MaartCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 69 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","DrakanCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 68 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","DarkCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 67 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","AusCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 66 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","AlexCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 65 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","EonCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 64 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","JohnCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 63 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","SwagCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 62 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","AdamCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 84 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","ProzanCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 85 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","CubeCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 86 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","RubixCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 87 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","LemonCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 88 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","LogicCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 89 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","SamCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 90 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","FuriousCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 91 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","PinguCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 92 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","TopazCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 93 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","KapaCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 94 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","VicousCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 61 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","SirsCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 60 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","IndigoCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 59 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","BeardedCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 58 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","SammyCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 57 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","YlvaCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 56 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","SkytesCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 55 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","StoneCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 54 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","DevonCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 53 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","RoboCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 52 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","BlueSkyCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 51 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","ImmoCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 95 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","GroundCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 96 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","FunnyCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 97 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","MosesCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 98 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","ZoruaCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 99 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","CagCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 100 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","LlewCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 101 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","UnWinCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 102 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","CalverinCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -52 211 103 {NoGravity:true,DisabledSlots:4144959,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","KaisCredits"],Silent:true,Rotation:[90,0]}

#Pose and armor
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.chest with leather_chestplate[dyed_color=65397]
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.legs with leather_leggings[dyed_color=65397]
item replace entity @e[x=0,type=armor_stand,tag=creditsAS,tag=!devCreditsAS,tag=!BuilderCreditsAS,tag=!ExtraCreditsAS] armor.feet with leather_boots[dyed_color=13784063]

#Skulls
item replace entity @e[x=0,type=armor_stand,tag=KurCredits] armor.head with player_head[profile={id:uuid("f98f0f72-4bd7-44b5-bec3-6b1fde8d81d3")}]
item replace entity @e[x=0,type=armor_stand,tag=CarsCredits] armor.head with player_head[profile={id:uuid("281ebe69-6f20-4bf4-b1dd-860395dd30e5")}]
item replace entity @e[x=0,type=armor_stand,tag=MaartCredits] armor.head with player_head[profile={id:uuid("eedda6db-d9ff-4eeb-9ca2-2b327cef311b")}]
item replace entity @e[x=0,type=armor_stand,tag=DrakanCredits] armor.head with player_head[profile={id:uuid("c66277a9-b934-4ea0-b84a-2b91027f81cd")}]
item replace entity @e[x=0,type=armor_stand,tag=AusCredits] armor.head with player_head[profile={id:uuid("8138cc9c-bc7a-439d-aeae-64a9023809a8")}]
item replace entity @e[x=0,type=armor_stand,tag=AlexCredits] armor.head with player_head[profile={id:uuid("caa873c8-3bf9-4d66-8e07-727e59193aa7")}]
item replace entity @e[x=0,type=armor_stand,tag=EonCredits] armor.head with player_head[profile={id:uuid("30bb0ab6-49dd-4494-8fd7-af0e09fcf083")}]
item replace entity @e[x=0,type=armor_stand,tag=JohnCredits] armor.head with player_head[profile={id:uuid("298eb26e-2360-43fa-9701-2c0123fd763c")}]
item replace entity @e[x=0,type=armor_stand,tag=SwagCredits] armor.head with player_head[profile={id:uuid("adbe874a-efd8-4bda-bce9-e4c27db373ef")}]
item replace entity @e[x=0,type=armor_stand,tag=DarkCredits] armor.head with player_head[profile={id:uuid("c5b61a1d-820f-495b-b630-49b656be8b2f")}]
item replace entity @e[x=0,type=armor_stand,tag=ProzanCredits] armor.head with player_head[profile={id:uuid("65d9f91d-85cd-441f-aa8d-637d799577ec")}]
item replace entity @e[x=0,type=armor_stand,tag=CubeCredits] armor.head with player_head[profile={id:uuid("c6da74e2-1ea2-46c2-bdae-78e591f7ab51")}]
item replace entity @e[x=0,type=armor_stand,tag=RubixCredits] armor.head with player_head[profile={id:uuid("eb5f48d1-20a2-4b9b-9918-e6a224332fe0")}]
item replace entity @e[x=0,type=armor_stand,tag=LemonCredits] armor.head with player_head[profile={id:uuid("f9516108-6f33-4126-8259-6f62f555373f")}]
item replace entity @e[x=0,type=armor_stand,tag=LogicCredits] armor.head with player_head[profile={id:uuid("1118da9b-30c3-4144-979c-59f984f36977")}]
item replace entity @e[x=0,type=armor_stand,tag=SamCredits] armor.head with player_head[profile={id:uuid("8dc3d945-cf90-47c1-a122-a576319d05a7")}]
item replace entity @e[x=0,type=armor_stand,tag=FuriousCredits] armor.head with player_head[profile={id:uuid("76cbcec0-52d7-40dd-9d8c-c5e0541868af")}]
item replace entity @e[x=0,type=armor_stand,tag=PinguCredits] armor.head with player_head[profile={id:uuid("5dca9ac3-11ed-47eb-8890-a443ba03e2b6")}]
item replace entity @e[x=0,type=armor_stand,tag=TopazCredits] armor.head with player_head[profile={id:uuid("bed8a2ef-1f2b-40d4-aff8-76f72e4db667")}]
item replace entity @e[x=0,type=armor_stand,tag=KapaCredits] armor.head with player_head[profile={id:uuid("83a0ef36-582c-48e7-a41e-a2cc1112c2af")}]
item replace entity @e[x=0,type=armor_stand,tag=AdamCredits] armor.head with player_head[profile={id:uuid("ee5a1973-352c-4500-a4ff-0515ee90ea4d")}]
item replace entity @e[x=0,type=armor_stand,tag=VicousCredits] armor.head with player_head[profile={id:uuid("26ca6e70-fcfb-4908-b548-cd503ea84a18")}]
item replace entity @e[x=0,type=armor_stand,tag=SirsCredits] armor.head with player_head[profile={id:uuid("c517a1a1-4bfe-4d1d-ba41-30bf44cb8bfb")}]
item replace entity @e[x=0,type=armor_stand,tag=IndigoCredits] armor.head with player_head[profile={id:uuid("99af064a-8052-4572-aa45-1a982de08d2a")}]
item replace entity @e[x=0,type=armor_stand,tag=BeardedCredits] armor.head with player_head[profile={id:uuid("fc9daeaf-7494-41c1-ac79-c23c0e644b33")}]
item replace entity @e[x=0,type=armor_stand,tag=UnWinCredits] armor.head with player_head[profile={id:uuid("898e3c11-b8de-452a-8f01-e69aa920c6c1")}]
item replace entity @e[x=0,type=armor_stand,tag=SammyCredits] armor.head with player_head[profile={id:uuid("caaccb0c-fadb-4123-abd1-3dc75ad901f7")}]
item replace entity @e[x=0,type=armor_stand,tag=YlvaCredits] armor.head with player_head[profile={id:uuid("8671579d-7cd1-4c08-84d2-3c1dd54c7e6b")}]
item replace entity @e[x=0,type=armor_stand,tag=SkytesCredits] armor.head with player_head[profile={id:uuid("33be5a6e-4d9f-405c-a7f3-e1a8cada34a6")}]
item replace entity @e[x=0,type=armor_stand,tag=StoneCredits] armor.head with player_head[profile={id:uuid("72371adf-2e8d-4c92-a734-a93c8279deb9")}]
item replace entity @e[x=0,type=armor_stand,tag=DevonCredits] armor.head with player_head[profile={id:uuid("803197b6-53c0-4de8-abcf-e9809521d78a")}]
item replace entity @e[x=0,type=armor_stand,tag=GroundCredits] armor.head with player_head[profile={id:uuid("f022c3e2-fe17-423f-90cd-9568d09ae2b7")}]
item replace entity @e[x=0,type=armor_stand,tag=FunnyCredits] armor.head with player_head[profile={id:uuid("35f47b57-3255-4f46-8f95-ba81067b4432")}]
item replace entity @e[x=0,type=armor_stand,tag=MosesCredits] armor.head with player_head[profile={id:uuid("1eaafffc-a0c3-446a-bf2b-aaf5acaeede9")}]
item replace entity @e[x=0,type=armor_stand,tag=BlueSkyCredits] armor.head with player_head[profile={id:uuid("65d85d11-f435-4fae-9c72-082e1f50f341")}]
item replace entity @e[x=0,type=armor_stand,tag=ImmoCredits] armor.head with player_head[profile={id:uuid("85cc5bc0-45af-461f-b1a5-9460a65aed8a")}]
item replace entity @e[x=0,type=armor_stand,tag=CalverinCredits] armor.head with player_head[profile={id:uuid("61c32a8b-232a-4902-a0a8-78016d4dfec8")}]
item replace entity @e[x=0,type=armor_stand,tag=RoboCredits] armor.head with player_head[profile={id:uuid("df67e274-abbf-4c5b-831b-f130dbfcf741")}]
item replace entity @e[x=0,type=armor_stand,tag=ZoruaCredits] armor.head with player_head[profile={id:uuid("350e8cc3-5792-4deb-8b81-03e5bf2041c6")}]
item replace entity @e[x=0,type=armor_stand,tag=CagCredits] armor.head with player_head[profile={id:uuid("0bcafcd2-05d4-4afc-9c9f-f38467a3847b")}]
item replace entity @e[x=0,type=armor_stand,tag=LlewCredits] armor.head with player_head[profile={id:uuid("93b43243-eeb1-4a34-84bf-7ffa57d01ac3")}]
item replace entity @e[x=0,type=armor_stand,tag=KaisCredits] armor.head with player_head[profile={id:uuid("367c4a98-81e1-46ea-947b-3e9164890bc3")}]

#Selected tags
tag @e[x=0,type=armor_stand,tag=creditsAS] remove SelectedCredit
tag @e[x=0,type=armor_stand,tag=KaisCredits] add SelectedCredit
