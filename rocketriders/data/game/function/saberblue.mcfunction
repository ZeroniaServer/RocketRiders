##Gives any players who join Blue team a Shooting Saber (and arrows if in the Waiting Area)
item replace entity @s hotbar.0 with minecraft:bow[unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:5},custom_name='{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}']]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameStarted,tag=!GameEnd,scores={count=..599}] run item replace entity @s weapon.offhand with arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}',custom_data={Lobby:1b}] 20