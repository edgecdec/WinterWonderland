execute if entity @s[distance=..6,scores={sledRaceActive=1..}] run tellraw @a ["",{"text":"[","bold":true,"color":"white"},{"text":"Sled Race","bold":true,"color":"aqua"},{"text":"] ","bold":true,"color":"white"},{"selector":"@p[scores={sledTime=1..}]","bold":true,"color":"dark_aqua"},{"text":" has finished with a time of ","color":"gold"},{"score":{"name":"@p[scores={sledTime=1..}]","objective":"sledTime"},"bold":true,"color":"white"}]

scoreboard players set @s[scores={sledTime=1..}] sledRaceActive 0

scoreboard players set @s sledRaceTemp 0
scoreboard players operation @s sledRaceTemp -= @s sledTime

execute if score @s[scores={sledRaceTemp=..-1,sledRaceActive=0}] sledRaceTemp > @s[scores={sledRaceTemp=..-1,sledRaceActive=0}] sledBest run execute as @s run function sled_races:race1/update_high_score

execute if entity @s[scores={sledRaceActive=0,sledTime=1..}] run scoreboard players set @s[scores={sledRaceActive=0,sledTime=1..}] sledTime 0
