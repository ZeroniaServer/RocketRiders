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
item replace entity @e[x=0,type=armor_stand,tag=GriffenCredits] armor.head with player_head[profile={id:uuid("7dcb5372-c319-4826-8ce9-e818520eb342")}]
item replace entity @e[x=0,type=armor_stand,tag=SkyCredits] armor.head with player_head[profile={id:uuid("a128d7e5-9d65-4daa-8b2a-e2926ad11c08")}]
item replace entity @e[x=0,type=armor_stand,tag=LexCredits] armor.head with player_head[profile={id:uuid("98298f76-ccb6-47e1-80dd-fce3db0a0ebe")}]
item replace entity @e[x=0,type=armor_stand,tag=KadesCredits] armor.head with player_head[profile={id:uuid("ce76dcba-0069-440b-bc26-28a36d831656")}]
item replace entity @e[x=0,type=armor_stand,tag=PeasntCredits] armor.head with player_head[profile={id:uuid("248ddab1-ce5c-4c80-905a-2b55b5cd786c")}]
item replace entity @e[x=0,type=armor_stand,tag=LizzeCredits] armor.head with player_head[profile={id:uuid("48c3579d-122b-47c6-a72f-756d9427a6a8")}]
item replace entity @e[x=0,type=armor_stand,tag=TNTCredits] armor.head with player_head[profile={id:uuid("fa5d523b-071e-4ed8-9c1e-383199ed944e")}]
item replace entity @e[x=0,type=armor_stand,tag=RangerCredits] armor.head with player_head[profile={id:uuid("bbfb724e-13b8-4f13-8a5a-a553946ec9e9")}]
item replace entity @e[x=0,type=armor_stand,tag=EraCredits] armor.head with player_head[profile={id:uuid("6300895e-799f-42d6-ad2a-f74fd0554740")}]
item replace entity @e[x=0,type=armor_stand,tag=LekroCredits] armor.head with player_head[profile={id:uuid("457d81b3-3332-48bf-96c4-121b2c76fbc5")}]
item replace entity @e[x=0,type=armor_stand,tag=DurovCredits] armor.head with player_head[profile={id:uuid("0c4d62a0-635e-4383-854c-9f28e1f57f07")}]
item replace entity @e[x=0,type=armor_stand,tag=AztechCredits] armor.head with player_head[profile={id:uuid("d4557649-e553-413e-a019-56d14548df96")}]
item replace entity @e[x=0,type=armor_stand,tag=XeoCredits] armor.head with player_head[profile={id:uuid("5a6f3ca9-ecad-4e0b-948b-c66b4d2ea2cc")}]
item replace entity @e[x=0,type=armor_stand,tag=PlayingCredits] armor.head with player_head[profile={id:uuid("dc4cda89-fc9d-4ea4-b4c0-7c432d8bd8b5")}]
item replace entity @e[x=0,type=armor_stand,tag=DanielCredits] armor.head with player_head[profile={id:uuid("e651871c-36a5-4365-9275-03d0e46bc541")}]
item replace entity @e[x=0,type=armor_stand,tag=CarlCredits] armor.head with player_head[profile={id:uuid("dc5b2c5a-aa52-4af4-99b4-2740105e7204")}]
item replace entity @e[x=0,type=armor_stand,tag=TuijCredits] armor.head with player_head[profile={id:uuid("41ed071f-9fa1-472f-8ed4-1fca7a9bad64")}]
item replace entity @e[x=0,type=armor_stand,tag=JagCredits] armor.head with player_head[profile={id:uuid("59db764b-de3c-4cf5-9413-a032ae04120a")}]
item replace entity @e[x=0,type=armor_stand,tag=MaxCredits] armor.head with player_head[profile={id:uuid("16b52570-eae4-4130-b9f1-345de7afba9d")}]
item replace entity @e[x=0,type=armor_stand,tag=HarpCredits] armor.head with player_head[profile={id:uuid("bca48239-57f3-4d8e-8e1e-5bcc70c9cdc4")}]
item replace entity @e[x=0,type=armor_stand,tag=UniverseCredits] armor.head with player_head[profile={id:uuid("dfb3b591-6efc-410e-ab14-ce872702dbf4")}]
item replace entity @e[x=0,type=armor_stand,tag=MichalCredits] armor.head with player_head[profile={id:uuid("203ac0ab-0c6e-4fce-abda-514af0b2f6ca")}]
item replace entity @e[x=0,type=armor_stand,tag=RedstoneCredits] armor.head with player_head[profile={id:uuid("f24207a7-435c-45cf-97d3-93c0bc324509")}]
item replace entity @e[x=0,type=armor_stand,tag=YankeeCredits] armor.head with player_head[profile={id:uuid("441ef803-4d61-4c68-867a-98429b2268e9")}]
item replace entity @e[x=0,type=armor_stand,tag=TallCredits] armor.head with player_head[profile={id:uuid("3767d08f-0d57-4c20-abbd-5db6e1bd3af0")}]
item replace entity @e[x=0,type=armor_stand,tag=OceanCredits] armor.head with player_head[profile={id:uuid("cf91750f-fe1c-4b03-baca-afee376ccbf5")}]
item replace entity @e[x=0,type=armor_stand,tag=MaeplCredits] armor.head with player_head[profile={id:uuid("15a9003d-53f4-4a29-a007-3e2e2cdccbd0")}]
item replace entity @e[x=0,type=armor_stand,tag=HrapCredits] armor.head with player_head[profile={id:uuid("0a69d3c5-00dd-4520-8fc4-959410b17de7")}]
item replace entity @e[x=0,type=armor_stand,tag=LimeyCredits] armor.head with player_head[profile={id:uuid("79659d40-9e2c-4bb7-985b-07c943190282")}]
item replace entity @e[x=0,type=armor_stand,tag=AnonCredits] armor.head with player_head[profile={id:uuid("83df3eb7-8006-4672-8a34-06f6ffd5208c")}]
item replace entity @e[x=0,type=armor_stand,tag=MiloCredits] armor.head with player_head[profile={id:uuid("33a51f7d-0daf-4032-a33b-4407c48776b9")}]
item replace entity @e[x=0,type=armor_stand,tag=LouCredits] armor.head with player_head[profile={id:uuid("d4e02cd2-59f8-483d-83d5-42aebc216a7d")}]
item replace entity @e[x=0,type=armor_stand,tag=NyxCredits] armor.head with player_head[profile={id:uuid("2c552d83-33e7-4833-b260-b253335fc206")}]
item replace entity @e[x=0,type=armor_stand,tag=RubenCredits] armor.head with player_head[profile={id:uuid("6a4391f0-e9ac-4434-ab82-439d28c64d24")}]
item replace entity @e[x=0,type=armor_stand,tag=TacoCredits] armor.head with player_head[profile={id:uuid("25a36887-7e6a-46de-99ba-b131e48230e2")}]
item replace entity @e[x=0,type=armor_stand,tag=LPCredits] armor.head with player_head[profile={id:uuid("dae3e7f0-8e88-488c-8cd2-3c83ddab4306")}]
item replace entity @e[x=0,type=armor_stand,tag=SkoolCredits] armor.head with player_head[profile={id:uuid("22972740-bb3c-46e2-9da0-0aa075c65c34")}]
item replace entity @e[x=0,type=armor_stand,tag=EnatorCredits] armor.head with player_head[profile={id:uuid("c7af82b5-d081-46ee-9139-755ca254fbca")}]
item replace entity @e[x=0,type=armor_stand,tag=AgroCredits] armor.head with player_head[profile={id:uuid("41575134-c7a9-4de4-b80e-a89c50ea2099")}]
item replace entity @e[x=0,type=armor_stand,tag=NettaCredits] armor.head with player_head[profile={id:uuid("9c3adf8d-a723-40c9-845b-c6e78c3ac460")}]
item replace entity @e[x=0,type=armor_stand,tag=DangerCredits] armor.head with player_head[profile={id:uuid("88935d39-d3e1-4bcc-94f1-685439fd4014")}]
item replace entity @e[x=0,type=armor_stand,tag=EvieCredits] armor.head with player_head[profile={id:uuid("5d3ac2d4-fb81-40b5-8844-7dc0ec89ad35")}]

#Selected tags
tag @e[x=0,type=armor_stand,tag=creditsAS] remove SelectedCredit
tag @e[x=0,type=armor_stand,tag=EvieCredits] add SelectedCredit

#Disable slots
execute as @e[x=0,type=armor_stand,tag=creditsAS] run data merge entity @s {DisabledSlots:4144959}