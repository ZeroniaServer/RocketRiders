##Prints info about the selected Modifier
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=0}] run tellraw @s [{"text":"Instamine:","color":"aqua","bold":true},{"text":" Players receive Haste 255 and can mine (most) blocks instantly.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=1}] run tellraw @s [{"text":"No Fall:","color":"aqua","bold":true},{"text":" Players are immune to fall damage.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=2}] run tellraw @s [{"text":"Explosive:","color":"aqua","bold":true},{"text":" TNT, Fireballs, Nova Rockets, and the Vortex all do more explosion damage.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=3}] run tellraw @s [{"text":"Rocket Residers:","color":"aqua","bold":true},{"text":" Players cannot leave their bases.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=4}] run tellraw @s [{"text":"Sonar:","color":"aqua","bold":true},{"text":" Players lose night vision so they cannot see blocks. Other players, projectiles, TNT, and utilities have glowing outlines.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=5}] run tellraw @s [{"text":"Molerat:","color":"aqua","bold":true},{"text":" A big block of glass spawns in the center of the map, which players must break through to damage the other base.","color":"white","bold":false,"italic":true},{"text":"\n[WARNING]","color":"red","bold":true},{"text":" Toggling this causes lag due to fill commands.","color":"white","bold":false}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=6}] run tellraw @s [{"text":"Minute Mix:","color":"aqua","bold":true},{"text":" Players receive a new set of 8 items every minute.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=7}] run tellraw @s [{"text":"Surprise Eggs:","color":"aqua","bold":true},{"text":" Players can receive a special spawn egg that spawns a random missile. These can stack up to 3.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=8}] run tellraw @s [{"text":"Wind Down:","color":"aqua","bold":true},{"text":" After every item given, the time between receiving items decreases, intensifying the game as it continues.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=9}] run tellraw @s [{"text":"Splash Streams:","color":"aqua","bold":true},{"text":" Liquids placed by Splash bottles are permanent.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=10}] run tellraw @s [{"text":"Spam Click:","color":"aqua","bold":true},{"text":" Players have no delay between melee attacks on enemies.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=11}] run tellraw @s [{"text":"Ninja Jump:","color":"aqua","bold":true},{"text":" Players have increased speed and jump height.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=12}] run tellraw @s [{"text":"Hardcore:","color":"aqua","bold":true},{"text":" Players have one heart of health and bases are three blocks thick.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=13}] run tellraw @s [{"text":"Double Portal:","color":"aqua","bold":true},{"text":" Both portals must be broken to win the game.","color":"white","bold":false,"italic":true}]
execute if entity @e[type=armor_stand,tag=Selection,scores={modifierID=14}] run tellraw @s [{"text":"Clutter Collector:","color":"aqua","bold":true},{"text":" Explosions do no block damage between the bases.","color":"white","bold":false,"italic":true}]

tellraw @s [{"text":""}]
tag @s remove modifierInfo