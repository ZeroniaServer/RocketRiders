summon armor_stand ~ ~ ~ {Silent:1b,DisabledSlots:4144959,Tags:["Bot","Yellow","YellowBot","NewBot"],Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,CustomNameVisible:1b,CustomName:'{"text":"[BOT]","color":"gold"}'}
item replace entity @e[tag=YellowBot,tag=NewBot] armor.head with player_head{SkullOwner:{Id:[I;1246757609,-563001642,-2058751332,-311473162],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhmZTU5MzViMmIzMjAyOWZiODY2ZTFhOTY2ODNmOWI4MDhkMzVkZDljZDNhNzY5NDU1MzRkYmQwZWM0MWNhOSJ9fX0="}]}}}
item replace entity @e[tag=YellowBot,tag=NewBot] armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
item replace entity @e[tag=YellowBot,tag=NewBot] armor.legs with leather_leggings{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
item replace entity @e[tag=YellowBot,tag=NewBot] armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}

scoreboard players set @e[tag=YellowBot,tag=NewBot] AI_Health 20
execute as @e[tag=YellowBot,tag=NewBot] store result score @s AI_Data run data get entity @s UUID[0]

tag @e[tag=NewBot] remove NewBot