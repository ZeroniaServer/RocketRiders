##Randomized messages for Lobby easter eggs
execute store result score $message var run random value 0..9
execute if score $message var matches 0 run tellraw @s {color:"gray",italic:true,text:"what does this thing do"}
execute if score $message var matches 1 run tellraw @s {color:"gray",italic:true,text:"boo"}
execute if score $message var matches 2 run tellraw @s {color:"gray",italic:true,text:"choo choo"}
execute if score $message var matches 3 run tellraw @s {color:"gray",italic:true,text:"stop pressing me"}
execute if score $message var matches 4 run tellraw @s {color:"gray",italic:true,text:"ouch that hurt"}
execute if score $message var matches 5 run tellraw @s {color:"gray",italic:true,text:"who are you"}
execute if score $message var matches 6 run tellraw @s {color:"gray",italic:true,text:"explain yourself"}
execute if score $message var matches 7 run tellraw @s {color:"gray",italic:true,text:"does it ever end"}
execute if score $message var matches 8 run tellraw @s {color:"gray",italic:true,text:"are we there yet"}
execute if score $message var matches 9 run tellraw @s {color:"gray",italic:true,text:"ok you can go now"}
