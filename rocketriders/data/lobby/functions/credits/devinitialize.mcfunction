##Initializes Developer armor stands

#Initial stuff
kill @e[tag=devcycle,type=armor_stand]

#Developers
summon armor_stand -49 216 79 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","YZEROCredits"],Pose:{Head:[352f,5f,0f],LeftLeg:[25f,0f,0f],RightLeg:[334f,0f,0f],LeftArm:[319f,0f,0f],RightArm:[214f,73f,0f]},Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -49 216 78 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","SelectedDev","EvtemaCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -49 216 77 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["devCreditsAS","creditsAS","devcycle","ChronosCredits"],Pose:{Head:[352f,0f,0f],LeftArm:[256f,35f,0f],RightArm:[250f,347f,0f]},Silent:1b,Rotation:[90.0f,0.0f]}

item replace entity @e[tag=EvtemaCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;-943590382,1320568700,-1377308582,-375799538],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWRjNDJlYTk4ZTExNjRlNWQ4MmI5ZGM3N2M5NGNjMjJmYmY1NmRlNzg3MDNjMDQ3ZmYxNWU4NzA2N2NmNWNiYSJ9fX0="}]}}}
item replace entity @e[tag=EvtemaCredits,type=armor_stand] weapon.mainhand with slime_ball
item replace entity @e[tag=EvtemaCredits,type=armor_stand] armor.chest with leather_chestplate{display:{color:14548992}}
item replace entity @e[tag=EvtemaCredits,type=armor_stand] armor.legs with leather_leggings{display:{color:14548992}}
item replace entity @e[tag=EvtemaCredits,type=armor_stand] armor.feet with leather_boots{display:{color:7470949}}

item replace entity @e[tag=YZEROCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;-133639988,-1225243025,-1517505395,-70310304],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTE1Y2EyZDE2OWJmMmVjODJmNzEzOWJjZWUxNDYwYjg0ZjJkYjVjNmZiNmMzNmU0NTUzNTA2MTQxYjUyMjA2NSJ9fX0="}]}}}
item replace entity @e[tag=YZEROCredits,type=armor_stand] weapon.mainhand with chain_command_block
item replace entity @e[tag=YZEROCredits,type=armor_stand] weapon.offhand with tropical_fish
item replace entity @e[tag=YZEROCredits,type=armor_stand] armor.chest with leather_chestplate{display:{color:1184274}}
item replace entity @e[tag=YZEROCredits,type=armor_stand] armor.legs with leather_leggings{display:{color:2368548}}
item replace entity @e[tag=YZEROCredits,type=armor_stand] armor.feet with leather_boots{display:{color:10682368}}

item replace entity @e[tag=ChronosCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;-518895305,-306034928,-1464755402,-389337087],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzMzZmVlYjhlOTU3MmIwOTZlNTUxZmYwZDAzZGE5YzA0YzNhMzY1Y2E1N2ZmNDIzODY4ZTViOGM5YzMxNDk1NiJ9fX0="}]}}}
item replace entity @e[tag=ChronosCredits,type=armor_stand] weapon.mainhand with bow
item replace entity @e[tag=ChronosCredits,type=armor_stand] armor.chest with iron_chestplate
item replace entity @e[tag=ChronosCredits,type=armor_stand] armor.legs with iron_leggings
item replace entity @e[tag=ChronosCredits,type=armor_stand] armor.feet with diamond_boots

#Builders
summon armor_stand -51 211 81 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","HugoCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 75 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","BardCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 82 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","TrekCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 74 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","BuilderCreditsAS","TypCredits"],Silent:1b,Rotation:[90.0f,0.0f]}

item replace entity @e[tag=BuilderCreditsAS,type=armor_stand] weapon.mainhand with netherite_pickaxe

#Blocky and Toul
summon armor_stand -51 211 73 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","ExtraCreditsAS","BlockyCredits"],Silent:1b,Rotation:[90.0f,0.0f]}
summon armor_stand -51 211 83 {NoGravity:1b,Marker:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["creditsAS","devcycle","ExtraCreditsAS","ToulCredits"],Silent:1b,Rotation:[90.0f,0.0f]}

item replace entity @e[tag=ToulCredits,type=armor_stand] weapon.mainhand with writable_book
data merge entity @e[tag=BlockyCredits,type=armor_stand,limit=1] {HandItems:[{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:BlockyCam}}]}

#Pose and armor
item replace entity @e[tag=BuilderCreditsAS,type=armor_stand] armor.chest with leather_chestplate{display:{color:16770835}}
item replace entity @e[tag=BuilderCreditsAS,type=armor_stand] armor.legs with leather_leggings{display:{color:16770835}}
item replace entity @e[tag=BuilderCreditsAS,type=armor_stand] armor.feet with leather_boots{display:{color:10813439}}

item replace entity @e[tag=BlockyCredits,type=armor_stand] armor.chest with leather_chestplate{display:{color:14061821}}
item replace entity @e[tag=BlockyCredits,type=armor_stand] armor.legs with leather_leggings{display:{color:14061821}}
item replace entity @e[tag=BlockyCredits,type=armor_stand] armor.feet with leather_boots{display:{color:13784063}}

item replace entity @e[tag=ToulCredits,type=armor_stand] armor.chest with leather_chestplate{display:{color:16383998}}
item replace entity @e[tag=ToulCredits,type=armor_stand] armor.legs with leather_leggings{display:{color:1908001}}
item replace entity @e[tag=ToulCredits,type=armor_stand] armor.feet with leather_boots{display:{color:16351261}}

#Skulls
item replace entity @e[tag=BardCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;203251676,1795967249,-2032645852,-553887958],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzZhMDA4NjkxNDM1NDllYWEyNmEyM2ViNTQ2OTNjZTUyYzI3YTIxYTA1MTJmZTg3ZmRiNGZmNzBiY2ViYmU3ZiJ9fX0="}]}}}
item replace entity @e[tag=HugoCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;59284743,-1969601549,-1756957932,-1612509311],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTJjMmYwMmRhZDI1ZGNiMzk5MDdiZjA0ODY3MzdjZTAxOTc5ZDljMDQ3OTBkYWVlNTBjNzM2ZTI0YTQ2ZjdkMCJ9fX0="}]}}}
item replace entity @e[tag=TrekCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;87557875,-969129795,-1389005621,845682813],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQwZGE1OGNlOGE1ZTA0MDc5MTJlM2M3MmU2NzIyZmExNGMzNTI3ZDMxMjg4MWMwNWRiYzg2MWNiYTg0NzQyNCJ9fX0="}]}}}
item replace entity @e[tag=TypCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;-1356426805,730483112,-1391175837,-1416409699],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjhkNGJjYzQxM2ZjZGZiMWZmOTc5YWQzMzg3MDZhNWE2NDBjOTk2YWE0YmU5OWUwNzZiODE5ZjFkMzQ3ZTk0OSJ9fX0="}]}}}
item replace entity @e[tag=BlockyCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;421022523,1072909005,-1990128211,621962662],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE2NDA2YjAwMjY2OTgyZjBiYTU4ZjViMjIxOWI4MGViNGEyMGRmODQ1MTE2NTk1NzE4NzZhYjE2YTM4MTI1MiJ9fX0="}]}}}
item replace entity @e[tag=ToulCredits,type=armor_stand] armor.head with player_head{SkullOwner:{Id:[I;306683579,646400271,-1510886369,1816201274],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmVlM2VmOWVlMzQ5ZjA2MzgyNTc5NmIwY2Q4ZWZmNmFkNThiNzgzYjEyY2E4YjY4MDM3MWZiZTQyZmZmMjIwMiJ9fX0="}]}}}

#Disable slots
execute as @e[tag=creditsAS,type=armor_stand] run data merge entity @s {DisabledSlots:4144959}