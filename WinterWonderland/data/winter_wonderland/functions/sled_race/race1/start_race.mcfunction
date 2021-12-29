# create team just in case
team add sledRace "Sled Race"
team modify sledRace color gold

# Start the race
scoreboard players set @a[distance=..10,nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] sledRaceActive 1

team join sledRace @a[distance=..10,nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}]

execute as @a[distance=..10,nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] unless entity @s[scores={sledBest=-10000..}] run scoreboard players set @s sledBest -10000