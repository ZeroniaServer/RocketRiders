##Appropriate tags for Arena Clear state
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove GameStarted

##Reset Tetris progress for Item RNG
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenAnt
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenBlade
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenCita
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenCata
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenGuard
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenGemi
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenLift
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenNull
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenSlash
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenToma
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenAllNormal
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenAux
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenJbust
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenRift
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenWar
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenAllHeavy
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenHur
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenBolt
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenAllLightning
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ChaosOff] remove givenBroad
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ChaosOff] remove givenBull
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ChaosOff] remove givenDuplex
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ChaosOff] remove givenHyper
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!ChaosOff] remove givenAllSpecial
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenCanopy
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenNova
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenObshield
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenSplash
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenVortex
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenArrows
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenArrowsTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenFireball
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenFireballTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenShield
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenShieldTwice
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove givenAllUtil

##Remove decorations
fill -14 84 66 38 64 48 air
fill -14 84 -66 38 64 -48 air
fill 32 63 -51 -9 37 -45 air
fill -9 63 51 33 38 46 air
fill -11 59 -73 35 36 -75 air
fill -11 59 73 35 36 75 air
fill -14 13 66 38 33 48 air
fill -14 13 -66 38 33 -48 air

##Kill all necessary entities and clear utility structures
kill @e[x=0,type=fireball]
kill @e[x=0,type=area_effect_cloud,tag=endFireballAEC]
kill @e[x=0,type=snowball]
kill @e[x=0,type=arrow]
kill @e[x=0,type=marker,tag=Vortex]
kill @e[x=0,type=armor_stand,tag=VortexItem]
kill @e[x=0,type=chicken]
kill @e[x=0,type=tnt]
execute if predicate game:modifier/punchable_tnt run kill @e[x=0,predicate=entities:type/punchable_tnt]
kill @e[x=0,type=tnt_minecart]
kill @e[x=0,type=creeper]
kill @e[x=0,type=dragon_fireball]
kill @e[x=0,type=#custom:potion,tag=splash]
kill @e[x=0,type=item]
kill @e[x=0,type=ender_pearl]
kill @e[x=0,type=firework_rocket,tag=BlueNova]
kill @e[x=0,type=firework_rocket,tag=YellowNova]
kill @e[x=0,type=marker,tag=novatracker]
execute at @e[x=0,type=marker,tag=obsidianshield] run fill ~-2 ~1 ~ ~2 ~-1 ~ air destroy
execute at @e[x=0,type=marker,tag=obsidianshield] run fill ~-1 ~2 ~ ~1 ~-2 ~ air destroy
kill @e[x=0,type=marker,tag=obsidianshield]
execute at @e[x=0,type=marker,tag=blueobtracker] run fill ~-2 ~1 ~ ~2 ~-1 ~ air destroy
execute at @e[x=0,type=marker,tag=blueobtracker] run fill ~-1 ~2 ~ ~1 ~-2 ~ air destroy
kill @e[x=0,type=marker,tag=blueobtracker]
execute at @e[x=0,type=marker,tag=yellowobtracker] run fill ~-2 ~1 ~ ~2 ~-1 ~ air destroy
execute at @e[x=0,type=marker,tag=yellowobtracker] run fill ~-1 ~2 ~ ~1 ~-2 ~ air destroy
kill @e[x=0,type=marker,tag=yellowobtracker]
kill @e[x=0,type=area_effect_cloud,tag=tempobshield]
kill @e[x=0,type=marker,tag=YellowPlatform]
kill @e[x=0,type=marker,tag=BluePlatform]
kill @e[x=0,type=marker,tag=BlueObshield]
kill @e[x=0,type=marker,tag=YellowObshield]
kill @e[x=0,type=marker,tag=BlueFireball]
kill @e[x=0,type=marker,tag=YellowFireball]
kill @e[x=0,type=marker,tag=missile]
kill @e[x=0,type=marker,tag=surprising]

##Summon AECs for tracking/block sweeping
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s canopyCount matches 1.. run function world_updates:1_3_0/instant_arena_clear/preparecanopy
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s shieldCount matches 1.. run function world_updates:1_3_0/instant_arena_clear/prepareshield
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s bMissileCount matches 1.. run function world_updates:1_3_0/instant_arena_clear/prepareblue
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s yMissileCount matches 1.. run function world_updates:1_3_0/instant_arena_clear/prepareyellow
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] if score @s splashCount matches 1.. run function world_updates:1_3_0/instant_arena_clear/preparesplash
summon marker 11 63 6 {Tags:["ArenaClearChecker"]}

##Begin recursive SmartClear process
function world_updates:1_3_0/instant_arena_clear/superspeed

##Close off Modification Room
execute as @e[x=0,type=marker,tag=ControlRoom] at @s run tp @a[distance=..15] -43 211 78 90 0
fill -57 201 84 -70 201 72 barrier replace air

##Prepare Item RNG timer for next game
scoreboard players operation @s MaxItemTime = @s MaxItemSec
scoreboard players operation @s MaxItemTime *= 20 MaxItemSec
scoreboard players set @s RandomItem -3
scoreboard players operation @s RandomItem += @s MaxItemTime
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=Minute] RandomItem 1197

##Remove Traveler tags
tag @a remove beenOnYellow
tag @a remove beenOnBlue
tag @a remove beenOnBoth

##Remove join cancel from join pads
schedule function game:uncancelpads 2t append

##Add flag that game just cleared (briefly locks joinpads)
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add JustCleared
