tag @e[tag=Selection] remove swapEnabled
tag @e[tag=Selection] remove SurpriseEggOff
tag @e[tag=Selection] remove SplashStreamsOff
tag @e[tag=Selection] remove featheredOff

#special item enabling
tag @e[tag=Selection] remove normalLocked
tag @e[tag=Selection,tag=normalWasOn] add rngNormal
tag @e[tag=Selection] remove normalWasOn
tag @e[tag=Selection,tag=splashWasOn] add rngSplash
tag @e[tag=Selection] remove splashWasOn
tag @e[tag=Selection,tag=canopyWasOn] add rngCanopy
tag @e[tag=Selection] remove canopyWasOn
tag @e[tag=Selection,tag=novaWasOn] add rngNova
tag @e[tag=Selection] remove novaWasOn
tag @e[tag=Selection,tag=riftWasOn] add rngRift
tag @e[tag=Selection] remove riftWasOn
tag @e[tag=Selection,tag=jbusterWasOn] add rngJbuster
tag @e[tag=Selection] remove jbusterWasOn

tag @e[tag=Selection] add switchGamemodes