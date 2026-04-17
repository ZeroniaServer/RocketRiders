scoreboard objectives remove text.flag_color
scoreboard objectives remove FallDistance

function game:forcestop
schedule function game:match_components/reset 5t
