##Displays info about certain utilities/missiles scattered around the lobby

#Obsidian Shield
tellraw @s[scores={displayinfo=1}] [{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Obsidian Shield","color":"white"}]
tellraw @s[scores={displayinfo=1}] {"text":"A shield made out of obsidian. Stops all missiles. Break the central glass 3 times to destroy it.","color":"gray","italic":true}

#Vortex
tellraw @s[scores={displayinfo=2}] [{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Vortex","color":"white"}]
tellraw @s[scores={displayinfo=2}] {"text":"A sky-mine. Blows up when enemies get close, missiles pass through it, or it gets shot by projectiles. Can chain react!","color":"gray","italic":true}

#Canopy
tellraw @s[scores={displayinfo=3}] [{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Canopy","color":"white"}]
tellraw @s[scores={displayinfo=3}] {"text":"A leaf platform. Use it to quickly reposition yourself, but don't play with fire on it!","color":"gray","italic":true}

#Shield
tellraw @s[scores={displayinfo=4}] [{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Shield","color":"white"}]
tellraw @s[scores={displayinfo=4}] {"text":"A glass shield. This is able to stop most missiles.","color":"gray","italic":true}

#Chronullifier
tellraw @s[scores={displayinfo=5}] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Chronullifier","color":"white"}]
tellraw @s[scores={displayinfo=5}] {"text":"The Chronullifer uses a unique observer engine with the same speed as non-observer engines.","color":"gray","italic":true}
tellraw @s[scores={displayinfo=5}] {"text":"(Made by: Chronos22 & YZEROgame)","color":"gray","italic":true}

#TomaTwo
tellraw @s[scores={displayinfo=6}] [{"text":"[Normal] ","color":"green","bold":true},{"text":"TomaTwo","color":"white"}]
tellraw @s[scores={displayinfo=6}] {"text":"The TomaTwo is a missile inspired by the Tomahawk from Missile Wars. This missile uses an observer engine.","color":"gray","italic":true}
tellraw @s[scores={displayinfo=6}] {"text":"(Made by: YZEROgame & Chronos22)","color":"gray","italic":true}

#Catapult
tellraw @s[scores={displayinfo=7}] [{"text":"[Normal] ","color":"green","bold":true},{"text":"Catapult","color":"white"}]
tellraw @s[scores={displayinfo=7}] {"text":"The Catapult does as its name suggests. Once it contacts a wall, it launches 2 TNT blocks out. You can also launch TNT by breaking the back slime block. Watch out!","color":"gray","italic":true}
tellraw @s[scores={displayinfo=7}] {"text":"(Made by: IndigoLaser)","color":"gray","italic":true}

#Hurricane
tellraw @s[scores={displayinfo=8}] [{"text":"[Lightning] ","color":"yellow","bold":true},{"text":"Hurricane","color":"white"}]
tellraw @s[scores={displayinfo=8}] {"text":"The Hurricane is a lightning-speed missile. Fittingly, it flies faster than most missiles. It might be harder to get on this one.","color":"gray","italic":true}
tellraw @s[scores={displayinfo=8}] {"text":"(Made by: HolyToiletPaper)","color":"gray","italic":true}

tellraw @s {"text":""}
scoreboard players reset @s displayinfo