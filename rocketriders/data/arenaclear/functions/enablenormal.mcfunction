##Enables all Normal missiles
tag @s[tag=!tomaWasOn] add rngToma
tag @s[tag=!bladeWasOn] add rngBlade
tag @s[tag=!antWasOn] add rngAnt
tag @s[tag=!cataWasOn] add rngCata
tag @s[tag=!liftWasOn] add rngLift
tag @s[tag=!slashWasOn] add rngSlash
tag @s[tag=!nullWasOn] add rngNull
tag @s[tag=!guardWasOn] add rngEguard
tag @s[tag=!citaWasOn] add rngCitadel
tag @s[tag=!gemiWasOn] add rngGemi
tag @s[tag=!normalWasOn] remove normalOff
scoreboard players set @e[predicate=custom:indimension,type=armor_stand,tag=Selection] refreshsigns 1