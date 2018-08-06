#Isolates Players And Deletes 1 Dirt 
execute as @a[scores={getdragonSword=1..}] run give @s minecraft:diamond_sword{display:{Name:"{\"text\":\"Dragon Sword\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2147483647,Operation:0,UUIDLeast:645033,UUIDMost:797619,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1024,Operation:0,UUIDLeast:508632,UUIDMost:969499,Slot:"mainhand"}]} 1
execute at @a[scores={getdragonSword=1..}] run kill @e[type=minecraft:item,distance=..6,limit=1,nbt={Item:{id:"minecraft:dirt"}}]
#Reset
scoreboard players set @a getdragonSword 0
#Detection Of A Held Dragon Sword
tag @a[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Dragon Sword\"}"},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2147483647,Operation:0,UUIDLeast:645033,UUIDMost:797619,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1024,Operation:0,UUIDLeast:508632,UUIDMost:969499,Slot:"mainhand"}]}}}] add holdingdragonSword
#Rips Apart Creative And Spectator Players
execute at @a[tag=holdingdragonSword] run kill @a[gamemode=creative,distance=1..10]
execute at @a[tag=holdingdragonSword] run kill @a[gamemode=spectator,distance=1..10]
#Another Reset
tag @a[tag=holdingdragonSword] remove holdingdragonSword