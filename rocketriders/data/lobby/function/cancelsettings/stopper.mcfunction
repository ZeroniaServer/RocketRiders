function game:forcestop
tellraw @a[x=0] [{color:"#FF8585",text:""},{color:"red",selector:"@s"}," is editing game settings!"]