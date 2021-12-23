# Set the max number of boats to spawn for the course
scoreboard players set treesBoatLeft PlayersInSleds 4

# Set how many players already in boats, not needed right now
# scoreboard players reset treesBoatOrig PlayersInSleds
# execute as @a[distance=..15,nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] run scoreboard players add treesBoatOrig PlayersInSled 1

# Delete all boats nearby by tping them into the void
execute as @e[type=minecraft:boat, distance=..15] run tp ~ -100 ~

# Summon x boats to be placed at certain locations
execute if score ZERO PlayersInSleds < treesMax PlayersInSleds run summon minecraft:boat ~ ~5 ~ {Rotation:[0.0f,0.0f],Type:oak}
scoreboard players remove treesBoatLeft playerinsled 1
execute if score ZERO PlayersInSleds < treesBoatLeft PlayersInSleds run summon minecraft:boat ~ ~5 ~ {Rotation:[0.0f,0.0f],Type:oak}
scoreboard players remove treesBoatLeft playerinsled 1
execute if score ZERO PlayersInSleds < treesBoatLeft PlayersInSleds run summon minecraft:boat ~ ~5 ~ {Rotation:[0.0f,0.0f],Type:oak}
scoreboard players remove treesBoatLeft playerinsled 1
execute if score ZERO PlayersInSleds < treesBoatLeft PlayersInSleds run summon minecraft:boat ~ ~5 ~ {Rotation:[0.0f,0.0f],Type:oak}
scoreboard players remove treesBoatLeft playerinsled 1