#> Pre-1.0.4 compatibility
scoreboard objectives add moleratConfirm trigger

#> Pre-1.1.0 compatibility
scoreboard objectives remove displayinfo
scoreboard objectives add displayinfo trigger
schedule function lobby:replacesigns 3t append
schedule function arenaclear:refreshcheck 3t append

#> Pre-1.1.4 compatibility
scoreboard objectives add HasICBM dummy

#> Fix blackstone slab
setblock -56 208 76 blackstone_slab

#> Fix pearl return bug
tag @e[type=armor_stand,tag=Selection] remove tempCanopy

#> Update beeshield commands
#Blue
setblock -25 184 -100 minecraft:structure_block[mode=save]{ignoreEntities:0b,mode:"SAVE",posX:0,posY:1,posZ:0,sizeX:5,sizeY:5,sizeZ:1,name:"bees_blue_full"}
setblock -23 185 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -24 186 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -23 186 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -22 186 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -24 187 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -23 187 -100 tnt[unstable=true]
setblock -22 187 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Age:-25000,Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -25 188 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Age:-25000,Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -24 188 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Age:-25000,Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -23 188 -100 minecraft:cyan_stained_glass_pane
setblock -22 188 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -21 188 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -22 189 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -23 189 -100 minecraft:blue_stained_glass_pane
setblock -24 189 -100 minecraft:bee_nest[honey_level=5,facing=south]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["BlueBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
fill -21 185 -100 -25 189 -100 minecraft:structure_void replace air
setblock -26 184 -100 minecraft:redstone_block
fill -21 189 -100 -26 184 -100 air
#Yellow
setblock -25 184 -100 minecraft:structure_block[mode=save]{ignoreEntities:0b,mode:"SAVE",posX:0,posY:1,posZ:0,sizeX:5,sizeY:5,sizeZ:1,name:"bees_yellow_full"}
setblock -23 185 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -24 186 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -23 186 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -22 186 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -24 187 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -23 187 -100 tnt[unstable=true]
setblock -22 187 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Age:-25000,Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -25 188 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Age:-25000,Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -24 188 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Age:-25000,Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -23 188 -100 minecraft:orange_stained_glass_pane
setblock -22 188 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -21 188 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -22 189 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
setblock -23 189 -100 minecraft:yellow_stained_glass_pane
setblock -24 189 -100 minecraft:bee_nest[honey_level=5,facing=north]{Bees:[{MinOccupationTicks:0,TicksInHive:0,EntityData:{Anger:1000,id:"minecraft:bee",HasNectar:1b,Tags:["YellowBee"],Glowing:1b,Health:1.0f,ActiveEffects:[{Id:11,Amplifier:100,Duration:40,Ambient:1}]}}]}
fill -21 185 -100 -25 189 -100 minecraft:structure_void replace air
setblock -26 184 -100 minecraft:redstone_block
fill -21 189 -100 -26 184 -100 air

#> Add a new shield for chase
#stage1
setblock -49 184 -46 minecraft:structure_block[mode=save]{ignoreEntities:0b,posX:0,mode:"SAVE",posY:1,sizeX:3,posZ:0,name:"whiteshield1",sizeY:3,sizeZ:1}
setblock -48 186 -46 minecraft:black_stained_glass
setblock -48 187 -46 minecraft:white_stained_glass
setblock -48 185 -46 minecraft:white_stained_glass
setblock -47 186 -46 minecraft:white_stained_glass
setblock -49 186 -46 minecraft:white_stained_glass
setblock -47 185 -46 minecraft:gray_stained_glass
setblock -49 185 -46 minecraft:gray_stained_glass
setblock -49 187 -46 minecraft:gray_stained_glass
setblock -47 187 -46 minecraft:gray_stained_glass
setblock -50 184 -46 redstone_block
fill -50 184 -46 -47 187 -46 air
#stage2
setblock -49 184 -44 minecraft:structure_block[mode=save]{ignoreEntities:0b,posX:0,mode:"SAVE",posY:1,sizeX:5,posZ:0,name:"minecraft:whiteshield2",sizeY:5,sizeZ:1}
setblock -49 185 -44 minecraft:structure_void
setblock -48 185 -44 minecraft:black_stained_glass
setblock -47 185 -44 minecraft:white_stained_glass
setblock -46 185 -44 minecraft:black_stained_glass
setblock -45 185 -44 minecraft:structure_void
setblock -45 186 -44 minecraft:black_stained_glass
setblock -45 187 -44 minecraft:white_stained_glass
setblock -45 188 -44 minecraft:black_stained_glass
setblock -45 189 -44 minecraft:structure_void
setblock -46 189 -44 minecraft:black_stained_glass
setblock -47 189 -44 minecraft:white_stained_glass
setblock -48 189 -44 minecraft:black_stained_glass
setblock -49 189 -44 minecraft:structure_void
setblock -49 188 -44 minecraft:black_stained_glass
setblock -49 187 -44 minecraft:white_stained_glass
setblock -49 186 -44 minecraft:black_stained_glass
setblock -46 188 -44 minecraft:gray_stained_glass
setblock -47 188 -44 minecraft:white_stained_glass
setblock -48 188 -44 minecraft:gray_stained_glass
setblock -48 187 -44 minecraft:white_stained_glass
setblock -47 187 -44 minecraft:black_stained_glass
setblock -46 187 -44 minecraft:white_stained_glass
setblock -46 186 -44 minecraft:gray_stained_glass
setblock -47 186 -44 minecraft:white_stained_glass
setblock -48 186 -44 minecraft:gray_stained_glass
setblock -50 184 -44 minecraft:redstone_block
fill -50 184 -44 -45 189 -44 air
#stage3
setblock -49 184 -41 minecraft:structure_block[mode=save]{ignoreEntities:0b,posX:0,mode:"SAVE",posY:1,sizeX:7,posZ:0,name:"whiteshield3",sizeY:7,sizeZ:1}
setblock -48 185 -41 minecraft:white_stained_glass_pane
setblock -49 186 -41 minecraft:white_stained_glass_pane
setblock -49 190 -41 minecraft:white_stained_glass_pane
setblock -48 191 -41 minecraft:white_stained_glass_pane
setblock -44 191 -41 minecraft:white_stained_glass_pane
setblock -43 190 -41 minecraft:white_stained_glass_pane
setblock -43 186 -41 minecraft:white_stained_glass_pane
setblock -44 185 -41 minecraft:white_stained_glass_pane
setblock -43 185 -41 minecraft:structure_void
setblock -49 185 -41 minecraft:structure_void
setblock -45 185 -41 minecraft:gray_stained_glass
setblock -46 185 -41 minecraft:white_stained_glass
setblock -47 185 -41 minecraft:gray_stained_glass
setblock -44 186 -41 minecraft:white_stained_glass
setblock -45 186 -41 minecraft:black_stained_glass
setblock -46 186 -41 minecraft:white_stained_glass
setblock -47 186 -41 minecraft:black_stained_glass
setblock -48 186 -41 minecraft:white_stained_glass
setblock -43 187 -41 minecraft:gray_stained_glass
setblock -44 187 -41 minecraft:black_stained_glass
setblock -45 187 -41 minecraft:gray_stained_glass
setblock -46 187 -41 minecraft:white_stained_glass
setblock -47 187 -41 minecraft:gray_stained_glass
setblock -48 187 -41 minecraft:black_stained_glass
setblock -49 187 -41 minecraft:gray_stained_glass
setblock -43 189 -41 minecraft:gray_stained_glass
setblock -44 189 -41 minecraft:black_stained_glass
setblock -45 189 -41 minecraft:gray_stained_glass
setblock -46 189 -41 minecraft:white_stained_glass
setblock -47 189 -41 minecraft:gray_stained_glass
setblock -48 189 -41 minecraft:black_stained_glass
setblock -49 189 -41 minecraft:gray_stained_glass
setblock -44 190 -41 minecraft:white_stained_glass
setblock -45 190 -41 minecraft:black_stained_glass
setblock -46 190 -41 minecraft:white_stained_glass
setblock -47 190 -41 minecraft:black_stained_glass
setblock -48 190 -41 minecraft:white_stained_glass
setblock -45 191 -41 minecraft:gray_stained_glass
setblock -46 191 -41 minecraft:white_stained_glass
setblock -47 191 -41 minecraft:gray_stained_glass
setblock -43 191 -41 minecraft:structure_void
setblock -49 191 -41 minecraft:structure_void
fill -43 188 -41 -49 188 -41 minecraft:white_stained_glass
setblock -46 188 -41 minecraft:black_stained_glass
setblock -50 184 -41 minecraft:redstone_block
fill -50 184 -41 -43 191 -41 air

#> Chase canopy
setblock -43 184 -40 minecraft:structure_block[mode=load]{mode:"SAVE",posY:1,sizeX:3,posZ:0,posX:0,name:"minecraft:whitecanopy1",sizeY:2,sizeZ:3}
fill -42 185 -39 -42 186 -39 oak_wood
setblock -42 186 -40 minecraft:white_wall_banner
setblock -41 186 -39 minecraft:white_wall_banner[facing=east]
setblock -42 186 -38 minecraft:white_wall_banner[facing=south]
setblock -43 186 -39 minecraft:white_wall_banner[facing=west]
fill -43 185 -40 -41 186 -38 minecraft:structure_void replace air
setblock -44 184 -40 redstone_block
fill -44 184 -40 -41 186 -38 air

#> Chase mode
execute if entity @e[type=armor_stand,tag=rr_chase] run scoreboard objectives add BreakCBRed minecraft.mined:minecraft.red_stained_glass
execute if entity @e[type=armor_stand,tag=rr_chase] run scoreboard objectives add BreakCBCyan minecraft.mined:minecraft.cyan_stained_glass
execute if entity @e[type=armor_stand,tag=rr_chase] run scoreboard objectives add BreakCBPurple minecraft.mined:minecraft.purple_stained_glass
execute if entity @e[type=armor_stand,tag=rr_chase] run scoreboard objectives add BreakCBTint minecraft.mined:minecraft.tinted_glass
execute if entity @e[type=armor_stand,tag=rr_chase] run scoreboard objectives add ChaseAlarm dummy
execute if entity @e[type=armor_stand,tag=rr_chase] run scoreboard objectives add ArmorColor dummy
tag @e[type=armor_stand,tag=Selection,tag=chaseEnabled] remove arrowLimit
execute as @e[type=armor_stand,tag=Selection,tag=chaseEnabled] run function rr_chase:enable
execute if entity @e[type=armor_stand,tag=Selection,tag=chaseEnabled,tag=EditedSettings] run function arenaclear:forceareaclear

#> New Achievement stuff
scoreboard objectives add HolyLand dummy
scoreboard objectives add CryAboutIt dummy
scoreboard objectives add ChaseCrystalID dummy

#> !!!! Necessary update command! Make sure not to leave this one commented out on release !!!!
tellraw @a {"text":"Successfully applied updates from Rocket Riders 1.2.0","color":"green"}
#scoreboard players set $WorldVersion CmdData 1200