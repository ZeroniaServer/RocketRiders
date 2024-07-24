##Initializes Developer armor stands

#Initial stuff
kill @e[x=0,type=armor_stand,tag=devcycle]

#Developers
summon armor_stand -49 216 79 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","YZEROCredits"],Pose:{Head:[352f,5f,0f],LeftLeg:[25f,0f,0f],RightLeg:[334f,0f,0f],LeftArm:[319f,0f,0f],RightArm:[214f,73f,0f]},Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -49 216 78 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","SelectedDev","EvtemaCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -49 216 77 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","ChronosCredits"],Pose:{Head:[352f,0f,0f],LeftArm:[256f,35f,0f],RightArm:[250f,347f,0f]},Silent:1b,Rotation:[90.0f,0.0f]}

item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits] armor.head with player_head[profile={id:[I;-943590382,1320568700,-1377308582,-375799538]}]
item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits] weapon.mainhand with slime_ball
item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits] armor.chest with leather_chestplate[dyed_color=14548992]
item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits] armor.legs with leather_leggings[dyed_color=14548992]
item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits] armor.feet with leather_boots[dyed_color=7470949]

item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits] armor.head with player_head[profile={id:[I;-695903554,-1949023048,-2133343279,304983704]}]
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits] weapon.mainhand with chain_command_block
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits] weapon.offhand with tropical_fish
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits] armor.chest with leather_chestplate[dyed_color=2631720]
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits] armor.legs with leather_leggings[dyed_color=2306126]
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits] armor.feet with leather_boots[dyed_color=10682368]

item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits] armor.head with player_head[profile={id:[I;-518895305,-306034928,-1464755402,-389337087]}]
item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits] weapon.mainhand with bow
item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits] armor.chest with iron_chestplate
item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits] armor.legs with iron_leggings
item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits] armor.feet with diamond_boots

#Builders
summon armor_stand -51 211 81 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","HugoCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 75 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","BardCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 82 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","TrekCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 74 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","TypCredits"],Silent:1b,Rotation:[90.0f,0.0f]}

item replace entity @e[x=0,type=armor_stand,tag=BuilderCreditsAS] weapon.mainhand with netherite_pickaxe

#Blocky and Toul
summon armor_stand -51 211 73 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","ExtraCreditsAS","BlockyCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 83 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","ExtraCreditsAS","ToulCredits"],Silent:1b,Rotation:[90.0f,0.0f]}

item replace entity @e[x=0,type=armor_stand,tag=ToulCredits] weapon.mainhand with writable_book
data merge entity @e[x=0,type=armor_stand,tag=BlockyCredits,limit=1] {HandItems:[{id:"minecraft:player_head",count:1b,components:{"minecraft:profile":{name:"BlockyCam",id:[I;-1162922729,1472808821,-1732059875,-2002025870],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTcyMTg1Mjk4NzU3NSwKICAicHJvZmlsZUlkIiA6ICJiYWFmMzUxNzU3Yzk0Nzc1OThjMmRkMWQ4OGFiODI3MiIsCiAgInByb2ZpbGVOYW1lIiA6ICJCbG9ja3lDYW0iLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmJmNTljYzUwYjczOWVhNDJiYmNiMDE2ODgzNWM0YTk2Mzg5YzliZjhmMWUxMzA2NWUwNjdkMjEzODgyMWNmYiIKICAgIH0sCiAgICAiQ0FQRSIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjM0MGMwZTAzZGQyNGExMWIxNWE4YjMzYzJhN2U5ZTMyYWJiMjA1MWIyNDgxZDBiYTdkZWZkNjM1Y2E3YTkzMyIKICAgIH0KICB9Cn0="}]}}},{}]}

#Pose and armor
item replace entity @e[x=0,type=armor_stand,tag=BuilderCreditsAS] armor.chest with leather_chestplate[dyed_color=16770835]
item replace entity @e[x=0,type=armor_stand,tag=BuilderCreditsAS] armor.legs with leather_leggings[dyed_color=16770835]
item replace entity @e[x=0,type=armor_stand,tag=BuilderCreditsAS] armor.feet with leather_boots[dyed_color=10813439]

item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits] armor.chest with leather_chestplate[dyed_color=14061821]
item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits] armor.legs with leather_leggings[dyed_color=14061821]
item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits] armor.feet with leather_boots[dyed_color=13784063]

item replace entity @e[x=0,type=armor_stand,tag=ToulCredits] armor.chest with leather_chestplate[dyed_color=16383998]
item replace entity @e[x=0,type=armor_stand,tag=ToulCredits] armor.legs with leather_leggings[dyed_color=1908001]
item replace entity @e[x=0,type=armor_stand,tag=ToulCredits] armor.feet with leather_boots[dyed_color=16351261]

#Skulls
item replace entity @e[x=0,type=armor_stand,tag=BardCredits] armor.head with player_head[profile={id:[I;203251676,1795967249,-2032645852,-553887958]}]
item replace entity @e[x=0,type=armor_stand,tag=HugoCredits] armor.head with player_head[profile={id:[I;59284743,-1969601549,-1756957932,-1612509311]}]
item replace entity @e[x=0,type=armor_stand,tag=TrekCredits] armor.head with player_head[profile={id:[I;87557875,-969129795,-1389005621,845682813]}]
item replace entity @e[x=0,type=armor_stand,tag=TypCredits] armor.head with player_head[profile={id:[I;-1356426805,730483112,-1391175837,-1416409699]}]
item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits] armor.head with player_head[profile={id:[I;421022523,1072909005,-1990128211,621962662]}]
item replace entity @e[x=0,type=armor_stand,tag=ToulCredits] armor.head with player_head[profile={id:[I;306683579,646400271,-1510886369,1816201274]}]

#Disable slots
execute as @e[x=0,type=armor_stand,tag=creditsAS] run data merge entity @s {DisabledSlots:4144959}