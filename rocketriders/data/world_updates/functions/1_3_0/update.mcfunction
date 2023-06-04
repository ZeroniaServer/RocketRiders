tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.3.0","color":"green"}
function world_updates:1_3_0/improve_parkour
execute unless entity @e[x=0,type=armor_stand,tag=rr_sandbox,limit=1] run function rr_sandbox:install
scoreboard objectives add toggleParticles trigger
scoreboard objectives add toggleTips trigger
scoreboard objectives add toggleParkourTips trigger
scoreboard objectives remove disableTips
scoreboard objectives remove hideParkourTips
scoreboard players set $WorldVersion CmdData 1300