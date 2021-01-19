##Initializes Developer armor stands

#Initial stuff
kill @e[tag=devcycle,type=armor_stand]

#Developers
summon armor_stand -49 216 79 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","YZEROCredits"],Pose:{Head:[352f,5f,0f],LeftLeg:[25f,0f,0f],RightLeg:[334f,0f,0f],LeftArm:[319f,0f,0f],RightArm:[214f,73f,0f]},Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -49 216 78 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","SelectedDev","EvtemaCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -49 216 77 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","ChronosCredits"],Pose:{Head:[352f,0f,0f],LeftArm:[256f,35f,0f],RightArm:[250f,347f,0f]},Silent:1b,Rotation:[90.0f, 0.0f]}

replaceitem entity @e[tag=EvtemaCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1887554432,-1266989808,-1240541371,-920284436],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWRjNDJlYTk4ZTExNjRlNWQ4MmI5ZGM3N2M5NGNjMjJmYmY1NmRlNzg3MDNjMDQ3ZmYxNWU4NzA2N2NmNWNiYSJ9fX0="}]}}}
replaceitem entity @e[tag=EvtemaCredits,type=armor_stand] weapon.mainhand slime_ball
replaceitem entity @e[tag=EvtemaCredits,type=armor_stand] armor.chest leather_chestplate{display:{color:14548992}}
replaceitem entity @e[tag=EvtemaCredits,type=armor_stand] armor.legs leather_leggings{display:{color:14548992}}
replaceitem entity @e[tag=EvtemaCredits,type=armor_stand] armor.feet leather_boots{display:{color:7470949}}

replaceitem entity @e[tag=YZEROCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1230328529,-275232718,-1541954820,1954902720],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE1Y2EyZDE2OWJmMmVjODJmNzEzOWJjZWUxNDYwYjg0ZjJkYjVjNmZiNmMzNmU0NTUzNTA2MTQxYjUyMjA2NSJ9fX0="}]}}}
replaceitem entity @e[tag=YZEROCredits,type=armor_stand] weapon.mainhand chain_command_block
replaceitem entity @e[tag=YZEROCredits,type=armor_stand] weapon.offhand tropical_fish
replaceitem entity @e[tag=YZEROCredits,type=armor_stand] armor.chest leather_chestplate{display:{color:1184274}}
replaceitem entity @e[tag=YZEROCredits,type=armor_stand] armor.legs leather_leggings{display:{color:2368548}}
replaceitem entity @e[tag=YZEROCredits,type=armor_stand] armor.feet leather_boots{display:{color:10682368}}

replaceitem entity @e[tag=ChronosCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1798532154,1692221812,-2138578109,616246879],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjcyMjhhNDgyZWQxMWY5Y2QzZTZhYmM2YzM5NDRhMWU0YTNiZDJkNGY4OTcwNjk5MDU4ODIxMTQ1NzcxN2Q5YiJ9fX0="}]}}}
replaceitem entity @e[tag=ChronosCredits,type=armor_stand] weapon.mainhand bow
replaceitem entity @e[tag=ChronosCredits,type=armor_stand] armor.chest iron_chestplate
replaceitem entity @e[tag=ChronosCredits,type=armor_stand] armor.legs iron_leggings
replaceitem entity @e[tag=ChronosCredits,type=armor_stand] armor.feet diamond_boots

#Builders
summon armor_stand -51 211 81 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","HugoCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 75 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","BardCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 82 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","TrekCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 74 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","TypCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}

#Blocky and Toul
summon armor_stand -51 211 73 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","ExtraCreditsAS","BlockyCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}
summon armor_stand -51 211 83 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","ExtraCreditsAS","ToulCredits"],Silent:1b,Rotation:[90.0f, 0.0f]}

#Pose and armor
replaceitem entity @e[tag=BuilderCreditsAS,type=armor_stand] armor.chest leather_chestplate{display:{color:16770835}}
replaceitem entity @e[tag=BuilderCreditsAS,type=armor_stand] armor.legs leather_leggings{display:{color:16770835}}
replaceitem entity @e[tag=BuilderCreditsAS,type=armor_stand] armor.feet leather_boots{display:{color:10813439}}

replaceitem entity @e[tag=BlockyCredits,type=armor_stand] armor.chest leather_chestplate{display:{color:14061821}}
replaceitem entity @e[tag=BlockyCredits,type=armor_stand] armor.legs leather_leggings{display:{color:14061821}}
replaceitem entity @e[tag=BlockyCredits,type=armor_stand] armor.feet leather_boots{display:{color:13784063}}

replaceitem entity @e[tag=ToulCredits,type=armor_stand] armor.chest leather_chestplate{display:{color:16383998}}
replaceitem entity @e[tag=ToulCredits,type=armor_stand] armor.legs leather_leggings{display:{color:1908001}}
replaceitem entity @e[tag=ToulCredits,type=armor_stand] armor.feet leather_boots{display:{color:16351261}}

#Skulls
replaceitem entity @e[tag=BardCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1899700849,-2072229445,-1464655699,2090884675],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzZhMDA4NjkxNDM1NDllYWEyNmEyM2ViNTQ2OTNjZTUyYzI3YTIxYTA1MTJmZTg3ZmRiNGZmNzBiY2ViYmU3ZiJ9fX0="}]}}}
replaceitem entity @e[tag=HugoCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-181057722,826100551,-1286706438,-737867583],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTJjMmYwMmRhZDI1ZGNiMzk5MDdiZjA0ODY3MzdjZTAxOTc5ZDljMDQ3OTBkYWVlNTBjNzM2ZTI0YTQ2ZjdkMCJ9fX0="}]}}}
replaceitem entity @e[tag=TrekCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-1595732527,1960659646,-1789697898,-1817107422],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU0ZTI4NmY4ZWEyY2VmY2ZiOWNlMjNkZjVkZjE1ODg0YmVjY2I0ZGNiMjExYjBhODI1MDIxMGYxYTZjMGY3NiJ9fX0="}]}}}
replaceitem entity @e[tag=TypCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-139439688,-385070938,-1335733841,-1145267504],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjhkNGJjYzQxM2ZjZGZiMWZmOTc5YWQzMzg3MDZhNWE2NDBjOTk2YWE0YmU5OWUwNzZiODE5ZjFkMzQ3ZTk0OSJ9fX0="}]}}}
replaceitem entity @e[tag=BlockyCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;1792793968,-822065492,-1579448131,-1672258558],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjA2MzU1YWIwZWY4NGI4ZTg1NDk2ZDZlMTllNWU2ZDRhYTg5Mjg4YjI2Y2NkYTUzNzA0OTlmZDdkZWQ3ZmY2MiJ9fX0="}]}}}
replaceitem entity @e[tag=ToulCredits,type=armor_stand] armor.head player_head{SkullOwner:{Id:[I;-75123510,-141145352,-1780581694,-279058577],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTg3NzlkYTc3MDdkMTI0MTE1MDAzODQ2NjI4MWUyM2EyNzhmMGIxNTM0NDBkODIxN2ZkMGM4NjM3ODlhZWY2OSJ9fX0="}]}}}