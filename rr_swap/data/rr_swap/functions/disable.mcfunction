kill @e[type=marker,tag=swapplatform]

tag @e[type=armor_stand,tag=Selection] remove swapEnabled
tag @e[type=armor_stand,tag=Selection] remove SurpriseEggOff
tag @e[type=armor_stand,tag=Selection] remove SplashStreamsOff
tag @e[type=armor_stand,tag=Selection] remove vortexOverride
tag @e[type=armor_stand,tag=Selection] remove respawnFlag

#special item enabling
tag @e[type=armor_stand,tag=Selection] remove normalLocked
tag @e[type=armor_stand,tag=Selection,tag=normalWasOn] add rngNormal
tag @e[type=armor_stand,tag=Selection] remove normalWasOn
tag @e[type=armor_stand,tag=Selection,tag=splashWasOn] add rngSplash
tag @e[type=armor_stand,tag=Selection] remove splashWasOn
tag @e[type=armor_stand,tag=Selection,tag=canopyWasOn] add rngCanopy
tag @e[type=armor_stand,tag=Selection] remove canopyWasOn
tag @e[type=armor_stand,tag=Selection,tag=novaWasOn] add rngNova
tag @e[type=armor_stand,tag=Selection] remove novaWasOn
tag @e[type=armor_stand,tag=Selection,tag=riftWasOn] add rngRift
tag @e[type=armor_stand,tag=Selection] remove riftWasOn
tag @e[type=armor_stand,tag=Selection,tag=jbusterWasOn] add rngJbuster
tag @e[type=armor_stand,tag=Selection] remove jbusterWasOn

tag @e[type=armor_stand,tag=Selection] add switchGamemodes