#THIS FILE IS TEMPORARY!!!!!

tag @a remove FireWithinComplete
tag @a remove RevengeComplete
tag @a remove HuhComplete
tag @a remove LawnComplete
tag @a remove RainComplete
tag @a remove SwissComplete
tag @a remove HelpComplete
tag @a remove PacifComplete

#Fixing up I'm Helping
advancement revoke @a[tag=CompletedHelping] only challenges:rrachievements/helping
scoreboard players add @a[tag=CompletedHelping] XP 70
tag @a[tag=CompletedHelping] remove CompletedHelping