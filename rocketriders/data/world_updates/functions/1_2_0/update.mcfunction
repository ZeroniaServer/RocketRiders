#Pre-1.0.4 compatibility
scoreboard objectives add moleratConfirm trigger

#Pre-1.1.0 compatibility
scoreboard objectives remove displayinfo
scoreboard objectives add displayinfo trigger
schedule function lobby:replacesigns 3t append
scoreboard players add $reloaded CmdData 1
schedule function arenaclear:refreshcheck 3t append

#Pre-1.1.4 compatibility
scoreboard objectives add HasICBM dummy

#Fix blackstone slab
setblock -56 208 76 blackstone_slab

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

#> !!!! Necessary update command! Make sure not to leave this one commented out on release !!!!
tellraw @a {"text":"Successfully applied updates from Rocket Riders 1.2.0","color":"green"}
#scoreboard players set $WorldVersion CmdData 1200