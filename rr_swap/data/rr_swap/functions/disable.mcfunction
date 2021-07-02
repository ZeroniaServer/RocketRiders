kill @e[tag=swapplatform,type=marker]

tag @e[tag=Selection,type=armor_stand] remove swapEnabled
tag @e[tag=Selection,type=armor_stand] remove SurpriseEggOff
tag @e[tag=Selection,type=armor_stand] remove SplashStreamsOff
tag @e[tag=Selection,type=armor_stand] remove vortexOverride
tag @e[tag=Selection,type=armor_stand] remove respawnFlag

#special item enabling
tag @e[tag=Selection,type=armor_stand] remove normalLocked
tag @e[tag=Selection,tag=normalWasOn,type=armor_stand] add rngNormal
tag @e[tag=Selection,type=armor_stand] remove normalWasOn
tag @e[tag=Selection,tag=splashWasOn,type=armor_stand] add rngSplash
tag @e[tag=Selection,type=armor_stand] remove splashWasOn
tag @e[tag=Selection,tag=canopyWasOn,type=armor_stand] add rngCanopy
tag @e[tag=Selection,type=armor_stand] remove canopyWasOn
tag @e[tag=Selection,tag=novaWasOn,type=armor_stand] add rngNova
tag @e[tag=Selection,type=armor_stand] remove novaWasOn
tag @e[tag=Selection,tag=riftWasOn,type=armor_stand] add rngRift
tag @e[tag=Selection,type=armor_stand] remove riftWasOn
tag @e[tag=Selection,tag=jbusterWasOn,type=armor_stand] add rngJbuster
tag @e[tag=Selection,type=armor_stand] remove jbusterWasOn

tag @e[tag=Selection,type=armor_stand] add switchGamemodes