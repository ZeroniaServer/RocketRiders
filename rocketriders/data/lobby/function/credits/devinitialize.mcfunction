##Initializes Developer armor stands

#Initial stuff
kill @e[x=0,type=armor_stand,tag=devcycle]

#Developers
summon armor_stand -49 216 79 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["devCreditsAS","creditsAS","devcycle","YZEROCredits"],Pose:{Head:[352,5,0],LeftLeg:[25,0,0],RightLeg:[334,0,0],LeftArm:[319,0,0],RightArm:[214,73,0]},Silent:true,Rotation:[90,0]}
summon armor_stand -49 216 78 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["devCreditsAS","creditsAS","devcycle","SelectedDev","EvtemaCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -49 216 77 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["devCreditsAS","creditsAS","devcycle","ChronosCredits"],Pose:{Head:[352,0,0],LeftArm:[256,35,0],RightArm:[250,347,0]},Silent:true,Rotation:[90,0]}
summon armor_stand -49 216 80 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["devCreditsAS","creditsAS","devcycle","DorkOrcCredits"],Pose:{Head:[13f,0f,0f],RightLeg:[11f,0f,0f],RightArm:[47f,176f,174f],LeftArm:[240f,0f,194f]},Silent:true,Rotation:[90,0]}
summon armor_stand -49 216 76 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["devCreditsAS","creditsAS","devcycle","ToulCredits"],Pose:{Head:[8f,6f,2f],LeftArm:[308f,9f,8f],RightArm:[306f,0f,344f]},Silent:true,Rotation:[90,0]}

item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWRjNDJlYTk4ZTExNjRlNWQ4MmI5ZGM3N2M5NGNjMjJmYmY1NmRlNzg3MDNjMDQ3ZmYxNWU4NzA2N2NmNWNiYSJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits,limit=1] weapon.mainhand with slime_ball
item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits,limit=1] armor.chest with leather_chestplate[dyed_color=14548992]
item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits,limit=1] armor.legs with leather_leggings[dyed_color=14548992]
item replace entity @e[x=0,type=armor_stand,tag=EvtemaCredits,limit=1] armor.feet with leather_boots[dyed_color=7470949]

item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZmZjOWJmNWYyYThiMDU4NzcxODc1OTUxMDg1YTU0N2QxYjc1YzJkM2U2YTRhNWEzYWVlMTc1MjNjNzUyZCJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits,limit=1] weapon.mainhand with chain_command_block
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits,limit=1] weapon.offhand with tropical_fish
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits,limit=1] armor.chest with leather_chestplate[dyed_color=2631720]
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits,limit=1] armor.legs with leather_leggings[dyed_color=2306126]
item replace entity @e[x=0,type=armor_stand,tag=YZEROCredits,limit=1] armor.feet with leather_boots[dyed_color=10682368]

item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzMzZmVlYjhlOTU3MmIwOTZlNTUxZmYwZDAzZGE5YzA0YzNhMzY1Y2E1N2ZmNDIzODY4ZTViOGM5YzMxNDk1NiJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits,limit=1] weapon.mainhand with bow
item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits,limit=1] armor.chest with iron_chestplate
item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits,limit=1] armor.legs with iron_leggings
item replace entity @e[x=0,type=armor_stand,tag=ChronosCredits,limit=1] armor.feet with diamond_boots

item replace entity @e[x=0,type=armor_stand,tag=ToulCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmVlM2VmOWVlMzQ5ZjA2MzgyNTc5NmIwY2Q4ZWZmNmFkNThiNzgzYjEyY2E4YjY4MDM3MWZiZTQyZmZmMjIwMiJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=ToulCredits,limit=1] weapon.mainhand with writable_book
item replace entity @e[x=0,type=armor_stand,tag=ToulCredits,limit=1] armor.chest with leather_chestplate[dyed_color=16383998]
item replace entity @e[x=0,type=armor_stand,tag=ToulCredits,limit=1] armor.legs with leather_leggings[dyed_color=1908001]
item replace entity @e[x=0,type=armor_stand,tag=ToulCredits,limit=1] armor.feet with leather_boots[dyed_color=16351261]

item replace entity @e[x=0,type=armor_stand,tag=DorkOrcCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY1MzJhMzQ2MjM3OTc1MDg1ODMxNGRjYjY0MTYxZmZjMTEyNGZmYjZkMDZjN2RlYWE4YmM1M2NhNmIxYjIyZiJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=DorkOrcCredits,limit=1] weapon.offhand with feather
item replace entity @e[x=0,type=armor_stand,tag=DorkOrcCredits,limit=1] armor.chest with copper_chestplate
item replace entity @e[x=0,type=armor_stand,tag=DorkOrcCredits,limit=1] armor.legs with copper_leggings
item replace entity @e[x=0,type=armor_stand,tag=DorkOrcCredits,limit=1] armor.feet with netherite_boots

#Builders
summon armor_stand -51 211 81 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","devcycle","BuilderCreditsAS","HugoCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 75 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","devcycle","BuilderCreditsAS","BardCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 82 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","devcycle","BuilderCreditsAS","TrekCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 74 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","devcycle","BuilderCreditsAS","TypCredits"],Silent:true,Rotation:[90,0]}
summon armor_stand -51 211 83 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","devcycle","BuilderCreditsAS","StuffyCredits"],Silent:true,Rotation:[90,0]}
item replace entity @e[x=0,type=armor_stand,tag=BuilderCreditsAS] weapon.mainhand with netherite_pickaxe
item replace entity @e[x=0,type=armor_stand,tag=BuilderCreditsAS] armor.chest with leather_chestplate[dyed_color=16770835]
item replace entity @e[x=0,type=armor_stand,tag=BuilderCreditsAS] armor.legs with leather_leggings[dyed_color=16770835]
item replace entity @e[x=0,type=armor_stand,tag=BuilderCreditsAS] armor.feet with leather_boots[dyed_color=10813439]

#Skulls
item replace entity @e[x=0,type=armor_stand,tag=BardCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzZhMDA4NjkxNDM1NDllYWEyNmEyM2ViNTQ2OTNjZTUyYzI3YTIxYTA1MTJmZTg3ZmRiNGZmNzBiY2ViYmU3ZiJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=HugoCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTJjMmYwMmRhZDI1ZGNiMzk5MDdiZjA0ODY3MzdjZTAxOTc5ZDljMDQ3OTBkYWVlNTBjNzM2ZTI0YTQ2ZjdkMCJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=TrekCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQwZGE1OGNlOGE1ZTA0MDc5MTJlM2M3MmU2NzIyZmExNGMzNTI3ZDMxMjg4MWMwNWRiYzg2MWNiYTg0NzQyNCJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=TypCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjhkNGJjYzQxM2ZjZGZiMWZmOTc5YWQzMzg3MDZhNWE2NDBjOTk2YWE0YmU5OWUwNzZiODE5ZjFkMzQ3ZTk0OSJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=StuffyCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjBmZDczMmRlYjFjN2MwZTc4OGMyYjdhMzk4Y2VhYzBiY2NjYmUxMDAwNTNiYTVjYmM5N2QwNDA4YmQ4MTllNCJ9fX0="}]}]

#Blocky
summon armor_stand -51 211 73 {NoGravity:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,Tags:["creditsAS","devcycle","ExtraCreditsAS","BlockyCredits"],Silent:true,Rotation:[90,0]}
item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits,limit=1] armor.head with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTE2NDA2YjAwMjY2OTgyZjBiYTU4ZjViMjIxOWI4MGViNGEyMGRmODQ1MTE2NTk1NzE4NzZhYjE2YTM4MTI1MiJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits,limit=1] weapon.mainhand with player_head[profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmJmNTljYzUwYjczOWVhNDJiYmNiMDE2ODgzNWM0YTk2Mzg5YzliZjhmMWUxMzA2NWUwNjdkMjEzODgyMWNmYiJ9fX0="}]}]
item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits,limit=1] armor.chest with leather_chestplate[dyed_color=14061821]
item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits,limit=1] armor.legs with leather_leggings[dyed_color=14061821]
item replace entity @e[x=0,type=armor_stand,tag=BlockyCredits,limit=1] armor.feet with leather_boots[dyed_color=13784063]

# Lock slots
execute as @e[x=0,type=armor_stand,tag=creditsAS] run data modify entity @s DisabledSlots set value 4144959
