execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1
tellraw @s {color:"dark_gray",italic:true,text:"Vortices and ICBMs are required in this gamemode."}
