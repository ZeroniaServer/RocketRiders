##Generates list of modifiers as JSON text components in storage
data modify storage rocketriders:modifiers list set value []
execute if predicate game:modifiers/instamine/on run data modify storage rocketriders:modifiers list append value {"text":"Instamine","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players can mine (most) blocks instantly.","color":"white"}]}}
execute if predicate game:modifiers/no_fall_damage/on run data modify storage rocketriders:modifiers list append value {"text":"No Fall","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players are immune to fall damage.","color":"white"}]}}
execute if predicate game:modifiers/explosive/on run data modify storage rocketriders:modifiers list append value {"text":"Explosive","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"TNT, Fireballs, Nova Rockets, and the Vortex all do more explosion damage.","color":"white"}]}}
execute if predicate game:modifiers/rocket_residers/on run data modify storage rocketriders:modifiers list append value {"text":"Rocket Residers","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players cannot leave their bases.","color":"white"}]}}
execute if predicate game:modifiers/sonar/on run data modify storage rocketriders:modifiers list append value {"text":"Sonar","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players lose Night Vision so they cannot see blocks. Other players, projectiles, TNT, and utilities have glowing outlines.","color":"white"}]}}
execute if predicate game:modifiers/molerat/on run data modify storage rocketriders:modifiers list append value {"text":"Molerat","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"A big block of glass spawns in the center of the map, which players must break through to damage the other base.","color":"white"}]}}
execute if predicate game:modifiers/minute_mix/on run data modify storage rocketriders:modifiers list append value {"text":"Minute Mix","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players receive a new set of 8 items every minute.","color":"white"}]}}
execute if predicate game:modifiers/surprise_eggs/on run data modify storage rocketriders:modifiers list append value {"text":"Surprise Eggs","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players can receive a spawn egg that spawns a random missile. These can stack up to 3.","color":"white"}]}}
execute if predicate game:modifiers/wind_down/on run data modify storage rocketriders:modifiers list append value {"text":"Wind Down","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"After every item given, the time between receiving items decreases, intensifying the match as it continues.","color":"white"}]}}
execute if predicate game:modifiers/splash_streams/on run data modify storage rocketriders:modifiers list append value {"text":"Splash Streams","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Liquids placed by Splash bottles are permanent.","color":"white"}]}}
execute if predicate game:modifiers/spam_click/on run data modify storage rocketriders:modifiers list append value {"text":"Spam Click","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players have no delay between melee attacks on enemies.","color":"white"}]}}
execute if predicate game:modifiers/ninja_jump/on run data modify storage rocketriders:modifiers list append value {"text":"Ninja Jump","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players have increased speed and jump height.","color":"white"}]}}
execute if predicate game:modifiers/hardcore/on run data modify storage rocketriders:modifiers list append value {"text":"Hardcore","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players have three hearts of health and bases are one block thick.","color":"white"}]}}
execute if predicate game:modifiers/double_portal/on run data modify storage rocketriders:modifiers list append value {"text":"Double Portal","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Both portals must be broken to win the match.","color":"white"}]}}
execute if predicate game:modifiers/clutter_collector/on run data modify storage rocketriders:modifiers list append value {"text":"Clutter Collector","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Explosions do no block damage between the bases.","color":"white"}]}}
execute if predicate game:modifiers/special_treatment/on run data modify storage rocketriders:modifiers list append value {"text":"Special Treatment","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Special Missiles are obtainable in regular gameplay.","color":"white"}]}}
execute if predicate game:modifiers/collision_control/on run data modify storage rocketriders:modifiers list append value {"text":"Collision Control","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Missiles cannot be spawned inside the enemy base.","color":"white"}]}}
execute if predicate game:modifiers/punchable_tnt/on run data modify storage rocketriders:modifiers list append value {"text":"Punchable TNT","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Primed TNT can be punched forward.","color":"white"}]}}
execute if predicate game:modifiers/unstable_tnt/on run data modify storage rocketriders:modifiers list append value {"text":"Unstable TNT","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Breaking TNT blocks immediately ignites them.","color":"white"}]}}
execute if predicate game:modifiers/hobbits/on run data modify storage rocketriders:modifiers list append value {"text":"Hobbits","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Players are 2/3 their normal size, and can sneak under 1-block-tall gaps.","color":"white"}]}}
execute if predicate game:modifiers/instant_tnt_explosions/on run data modify storage rocketriders:modifiers list append value {"text":"Instant TNT","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"Primed TNT instantly explodes.","color":"white"}]}}
execute if predicate game:modifiers/long_arms/on run data modify storage rocketriders:modifiers list append value {"text":"Long Arms","color":"aqua","hover_event":{"action":"show_text","value":["",{"text":"You can reach blocks and players from twice as far away.","color":"white"}]}}

#Creates companion list of each modifier's name length
data modify storage rocketriders:modifiers length set value []
execute if predicate game:modifiers/instamine/on run data modify storage rocketriders:modifiers length append value 9
execute if predicate game:modifiers/no_fall_damage/on run data modify storage rocketriders:modifiers length append value 7
execute if predicate game:modifiers/explosive/on run data modify storage rocketriders:modifiers length append value 9
execute if predicate game:modifiers/rocket_residers/on run data modify storage rocketriders:modifiers length append value 15
execute if predicate game:modifiers/sonar/on run data modify storage rocketriders:modifiers length append value 5
execute if predicate game:modifiers/molerat/on run data modify storage rocketriders:modifiers length append value 7
execute if predicate game:modifiers/minute_mix/on run data modify storage rocketriders:modifiers length append value 10
execute if predicate game:modifiers/special_treatment/on run data modify storage rocketriders:modifiers length append value 13
execute if predicate game:modifiers/wind_down/on run data modify storage rocketriders:modifiers length append value 9
execute if predicate game:modifiers/splash_streams/on run data modify storage rocketriders:modifiers length append value 14
execute if predicate game:modifiers/spam_click/on run data modify storage rocketriders:modifiers length append value 10
execute if predicate game:modifiers/ninja_jump/on run data modify storage rocketriders:modifiers length append value 10
execute if predicate game:modifiers/hardcore/on run data modify storage rocketriders:modifiers length append value 8
execute if predicate game:modifiers/double_portal/on run data modify storage rocketriders:modifiers length append value 13
execute if predicate game:modifiers/clutter_collector/on run data modify storage rocketriders:modifiers length append value 17
execute if predicate game:modifiers/special_treatment/on run data modify storage rocketriders:modifiers length append value 17
execute if predicate game:modifiers/collision_control/on run data modify storage rocketriders:modifiers length append value 17
execute if predicate game:modifiers/punchable_tnt/on run data modify storage rocketriders:modifiers length append value 13
execute if predicate game:modifiers/unstable_tnt/on run data modify storage rocketriders:modifiers length append value 12
execute if predicate game:modifiers/hobbits/on run data modify storage rocketriders:modifiers length append value 7
execute if predicate game:modifiers/instant_tnt_explosions/on run data modify storage rocketriders:modifiers length append value 11
execute if predicate game:modifiers/long_arms/on run data modify storage rocketriders:modifiers length append value 9

#Splits this list into lines for chat legibility
data modify storage rocketriders:modifiers line set value []
data modify storage rocketriders:modifiers line append value []
function modifiers:splitlist