##Randomized splash messages for the winners of a match
execute if predicate game:game_rules/disable_splash_messages/on run return fail
execute if predicate game:game_rules/disable_titles/on run return fail

execute as @a[x=0,tag=Winner] run title @s times 5 30 5

#If you want to add more splashes just increase this number.
execute store result score $winsplash CmdData run random value 0..81

execute if score $winsplash CmdData matches 18 if predicate game:match_components/one_team run scoreboard players set $winsplash CmdData 0
execute if score $winsplash CmdData matches 29 if predicate game:match_components/one_team run scoreboard players set $winsplash CmdData 0
execute if score $winsplash CmdData matches 38 if predicate game:match_components/one_team run scoreboard players set $winsplash CmdData 0
execute if score $winsplash CmdData matches 57 if entity Evtema3 run scoreboard players set $winsplash CmdData 0

#Add splashes here (just copy paste the line and change the score)
execute if score $winsplash CmdData matches 0..3 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Take some time to celebrate!"}
execute if score $winsplash CmdData matches 4 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"GG!"}
execute if score $winsplash CmdData matches 5 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Victory is ours!"}
execute if score $winsplash CmdData matches 6 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Didn't even have to aim!"}
execute if score $winsplash CmdData matches 7 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"EZ clap."}
execute if score $winsplash CmdData matches 8 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"We expected that to happen."}
execute if score $winsplash CmdData matches 9 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Good game!"}
execute if score $winsplash CmdData matches 10 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Pro gamer move!"}
execute if score $winsplash CmdData matches 11 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"PogChamp!"}
execute if score $winsplash CmdData matches 12 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"We win these."}
execute if score $winsplash CmdData matches 13 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"ggezpz"}
execute if score $winsplash CmdData matches 14 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"There never was any doubt."}
execute if score $winsplash CmdData matches 15 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"It was all part of the plan!"}
execute if score $winsplash CmdData matches 16 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Victory Royale!"}
execute if score $winsplash CmdData matches 17 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"We got them good!"}
execute if score $winsplash CmdData matches 18 run title @a[x=0,tag=Winner,predicate=custom:team/yellow] subtitle {color:"green",text:"We did it boys, Blue is no more."}
execute if score $winsplash CmdData matches 18 run title @a[x=0,tag=Winner,predicate=custom:team/blue] subtitle {color:"green",text:"We did it boys, Yellow is no more."}
execute if score $winsplash CmdData matches 19 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"oops"}
execute if score $winsplash CmdData matches 20 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"It was already decided beforehand."}
execute if score $winsplash CmdData matches 21 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"*Insert victory fanfare here*"}
execute if score $winsplash CmdData matches 22 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Good, now do it blindfolded."}
execute if score $winsplash CmdData matches 23 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Rekt."}
execute if score $winsplash CmdData matches 24 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Employee of the Month!"}
execute if score $winsplash CmdData matches 25 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Ah, so that's what the slime block does."}
execute if score $winsplash CmdData matches 26 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Took you long enough..."}
execute if score $winsplash CmdData matches 27 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"get carried lmao"}
execute if score $winsplash CmdData matches 28 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Winner winner chicken dinner!"}
execute if score $winsplash CmdData matches 29 run title @a[x=0,tag=Winner,predicate=custom:team/yellow] subtitle {color:"green",text:"Blue was ejected."}
execute if score $winsplash CmdData matches 29 run title @a[x=0,tag=Winner,predicate=custom:team/blue] subtitle {color:"green",text:"Yellow was ejected."}
execute if score $winsplash CmdData matches 30 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Drink the salty tears of your enemies!"}
execute if score $winsplash CmdData matches 31 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Good, now proceed to the next test chamber."}
execute if score $winsplash CmdData matches 32 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Better gaming chairs ;)"}
execute if score $winsplash CmdData matches 33 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"this is very"}
execute if score $winsplash CmdData matches 34 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"It's coming home!"}
execute if score $winsplash CmdData matches 35 run title @a[x=0,tag=Winner] subtitle [{color:"green",text:"It's coming "},{obfuscated:true,text:"h"},"Rome!"]
execute if score $winsplash CmdData matches 36 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Knock knock, who's there? Nuclear warfare!"}
execute if score $winsplash CmdData matches 37 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Imagine losing"}
execute if score $winsplash CmdData matches 38 run title @a[x=0,tag=Winner,predicate=custom:team/yellow] subtitle {color:"green",text:"Bet Yellow won, I just know it!"}
execute if score $winsplash CmdData matches 38 run title @a[x=0,tag=Winner,predicate=custom:team/blue] subtitle {color:"green",text:"Bet Blue won, I just know it!"}
execute if score $winsplash CmdData matches 39 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"MISSILE WENT BOOM!!!!!"}
execute if score $winsplash CmdData matches 40 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Somewhere, Goldy smiles on you."}
execute if score $winsplash CmdData matches 41 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Ez carry"}
execute if score $winsplash CmdData matches 42 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"¯\\_(ツ)_/¯"}
execute if score $winsplash CmdData matches 43 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Nobody expected this!"}
execute if score $winsplash CmdData matches 44 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"less go"}
execute if score $winsplash CmdData matches 45 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Stonks ↑"}
execute if score $winsplash CmdData matches 46 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Kalm"}
execute if score $winsplash CmdData matches 47 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Oops, wrong button."}
execute if score $winsplash CmdData matches 48 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"We are superior!"}
execute if score $winsplash CmdData matches 49 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Alpha missile!"}
execute if score $winsplash CmdData matches 50 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"In Britain, they call this a chuffing success!"}
execute if score $winsplash CmdData matches 51 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"We do a little gaming"}
execute if score $winsplash CmdData matches 52 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"-1 ping"}
execute if score $winsplash CmdData matches 53 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Cracked the launch codes B)"}
execute if score $winsplash CmdData matches 54 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"+100 Rocket Bucks!"}
execute if score $winsplash CmdData matches 55 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"You got lucky this time..."}
execute if score $winsplash CmdData matches 56 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Get fake."}
execute if score $winsplash CmdData matches 57 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"I'll never see this message! - Evtema3"}
execute if score $winsplash CmdData matches 58 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"The cake wasn't fake ;)"}
execute if score $winsplash CmdData matches 59 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Showed your DynaMIGHT!"}
execute if score $winsplash CmdData matches 60 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Just like the Allay!"}
execute if score $winsplash CmdData matches 61 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Pineapples!"}
execute if score $winsplash CmdData matches 62 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Good, but can you parallel park your rocket?"}
execute if score $winsplash CmdData matches 63 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Tutorial complete!"}
execute if score $winsplash CmdData matches 64 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"456,000,000₩"}
execute if score $winsplash CmdData matches 65 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"You're da bomb!"}
execute if score $winsplash CmdData matches 67 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"What is that I hear? Sounds like skill issue."}
execute if score $winsplash CmdData matches 68 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Hey wait, did they grief themselves?"}
execute if score $winsplash CmdData matches 69 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Well done, medal is at -224 77 29 (pranked)"}
execute if score $winsplash CmdData matches 70 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Now, was that so hard?"}
execute if score $winsplash CmdData matches 71 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Yes Rico, kaboom."}
execute if score $winsplash CmdData matches 72 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Hasta la vista, baby!"}
execute if score $winsplash CmdData matches 73 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"W"}
execute if score $winsplash CmdData matches 74 run title @a[x=0,tag=Winner] subtitle [{color:"green",text:"The "},{bold:true,text:"Rock"}," really came through!"]
execute if score $winsplash CmdData matches 75 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Who trained you?"}
execute if score $winsplash CmdData matches 76 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Hey, Queen! Girl, you have done it again."}
execute if score $winsplash CmdData matches 77 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Constantly raising the bar for us all, and doing it flawlessly."}
execute if score $winsplash CmdData matches 79 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Huzzah!"}
execute if score $winsplash CmdData matches 80 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"Hooray!"}
execute if score $winsplash CmdData matches 81 run title @a[x=0,tag=Winner] subtitle {color:"green",text:"One for the history books!"}
