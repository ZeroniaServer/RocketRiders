scoreboard players reset @a[team=Blue] ForfeitWin
scoreboard players reset @a[team=Yellow] ForfeitWin
scoreboard players reset @a[team=Blue] ForfeitLoss
scoreboard players reset @a[team=Yellow] ForfeitLoss
scoreboard players reset BlueWin Forfeit
scoreboard players reset BlueLoss Forfeit
scoreboard players reset YellowWin Forfeit
scoreboard players reset YellowLoss Forfeit

function rr_duel:forfeit/calcblue
function rr_duel:forfeit/quickstore_b

function rr_duel:forfeit/calcyellow
function rr_duel:forfeit/quickstore_y

scoreboard players operation @a[team=Yellow] ForfeitLoss = YellowLoss Forfeit
scoreboard players operation @a[team=Blue] ForfeitLoss = BlueLoss Forfeit
scoreboard players operation @a[team=Yellow] ForfeitWin = YellowWin Forfeit
scoreboard players operation @a[team=Blue] ForfeitWin = BlueWin Forfeit

scoreboard players reset YellowLoss Forfeit
scoreboard players reset YellowWin Forfeit
scoreboard players reset BlueLoss Forfeit
scoreboard players reset BlueWin Forfeit