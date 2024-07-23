#> Pre-1.0.4 compatibility
scoreboard objectives add moleratConfirm trigger

#> Pre-1.1.0 compatibility
scoreboard objectives remove displayinfo
scoreboard objectives add displayinfo trigger
schedule function lobby:replacesigns_indimension 3t append
schedule function arenaclear:refreshcheck_indimension 3t append

#> Pre-1.1.4 compatibility
scoreboard objectives add HasICBM dummy

#> Fix blackstone slab
setblock -56 208 76 blackstone_slab

#> Remove unnecessary tag
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove tempCanopy

#> Update Chase mode if already active
execute if entity @e[x=0,type=armor_stand,tag=rr_chase] run scoreboard objectives add BreakCBRed minecraft.mined:minecraft.red_stained_glass
execute if entity @e[x=0,type=armor_stand,tag=rr_chase] run scoreboard objectives add BreakCBCyan minecraft.mined:minecraft.cyan_stained_glass
execute if entity @e[x=0,type=armor_stand,tag=rr_chase] run scoreboard objectives add BreakCBPurple minecraft.mined:minecraft.purple_stained_glass
execute if entity @e[x=0,type=armor_stand,tag=rr_chase] run scoreboard objectives add BreakCBTint minecraft.mined:minecraft.tinted_glass
execute if entity @e[x=0,type=armor_stand,tag=rr_chase] run scoreboard objectives add ChaseAlarm dummy
execute if entity @e[x=0,type=armor_stand,tag=rr_chase] run scoreboard objectives add ArmorColor dummy
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] remove arrowLimit
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run function rr_chase:enable
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled,tag=EditedSettings] run function arenaclear:forceareaclear

#> New Achievement stuff
scoreboard objectives add HolyLand dummy
scoreboard objectives add CryAboutIt dummy
scoreboard objectives add ChaseCrystalID dummy
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=!SMCustom] as @a[x=0] run function achievements:roots

tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.2.0","color":"green"}
scoreboard players set $WorldVersion CmdData 1200