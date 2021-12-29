# update high score
tellraw @a ["",{"text":"[","bold":true,"color":"white"},{"text":"Sled Race","bold":true,"color":"aqua"},{"text":"] ","bold":true,"color":"white"},{"selector":"@s","bold":true,"color":"dark_aqua"},{"text":" got a personal best!","color":"gold"}]
scoreboard players set @s sledBest 0
scoreboard players operation @s sledBest += @s sledRaceTemp