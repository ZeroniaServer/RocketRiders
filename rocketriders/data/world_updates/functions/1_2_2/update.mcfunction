#> Setup NNHealth (credit: NOPEname)
function nnhealth:setup

#> Update YZERO's armor
function lobby:credits/devinitialize

tellraw @a {"text":"Successfully applied updates from Rocket Riders 1.2.2","color":"green"}
scoreboard players set $WorldVersion CmdData 1220