##Clears out all arrows if the player has any wrong ones
clear @s[scores={wrongArrow=1..}] arrow
clear @s[scores={wrongLeviArrow=1..}] tipped_arrow{CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919}
clear @s[scores={wrongSlowArrow=1..}] tipped_arrow{CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802}
clear @s[scores={wrongBlindArrow=1..}] tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064}
clear @s[scores={wrongWitherArrow=1..}] tipped_arrow{CustomPotionEffects:[{Id:20b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:4008735}

##Begins replacement with correct arrows
execute as @s[scores={wrongArrow=1..}] run function items:wrongarrows/replacearrows
execute as @s[scores={wrongLeviArrow=1..}] run function items:wrongarrows/replaceleviarrows
execute as @s[scores={wrongSlowArrow=1..}] run function items:wrongarrows/replaceslowarrows
execute as @s[scores={wrongBlindArrow=1..}] run function items:wrongarrows/replaceblindarrows
execute as @s[scores={wrongWitherArrow=1..}] run function items:wrongarrows/replacewitherarrows