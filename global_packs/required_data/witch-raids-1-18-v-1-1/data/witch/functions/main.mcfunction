#random
scoreboard players add random otherScoresWI 1
execute if score random otherScoresWI >= randomLimit otherScoresWI run scoreboard players set random otherScoresWI 0


#witch attack
execute as @a[tag=witch_curse] at @s as @e[type=villager,distance=..54,limit=1,sort=random] at @s unless entity @e[type=area_effect_cloud,tag=witchRaidInProg] run function witch:start_witch_raid

execute as @e[type=phantom,tag=broom] at @s if entity @e[type=witch,tag=witch_raider,distance=..1] run data merge entity @s {Fire:-20}

execute at @e[type=ghast,tag=witch_ghast] run particle minecraft:witch ~ ~2 ~ 0.1 0.2 0.1 0.01 10 force

#bossbar
execute store result bossbar minecraft:witch_raid value if entity @e[type=witch,tag=witch_raider]
execute if entity @e[type=witch,tag=witch_raider] run bossbar set minecraft:witch_raid visible true
execute unless entity @e[type=witch,tag=witch_raider] run bossbar set minecraft:witch_raid visible false
execute unless entity @e[type=witch,tag=witch_raider] run bossbar set minecraft:witch_raid players

execute at @e[type=witch,tag=witch_raider] run bossbar set minecraft:witch_raid players @a[distance=..100]

#baba yaga
execute as @e[type=vex,tag=witch_wisp] at @s if entity @e[type=witch,tag=baba_yaga,distance=..3] run effect give @s resistance 1 10 true
execute as @e[type=guardian,tag=witch_wisp_turret] at @s if entity @e[type=witch,tag=baba_yaga,distance=..3] run effect give @s resistance 1 10 true
execute as @e[type=ghast,tag=witch_ghast] at @s unless entity @e[type=witch,tag=baba_yaga,distance=..3] run kill @s
execute as @e[type=vex,tag=witch_wisp] at @s unless entity @e[type=guardian,tag=witch_wisp_turret,distance=..1] run kill @s
execute as @e[type=guardian,tag=witch_wisp_turret] at @s unless entity @e[type=vex,tag=witch_wisp,distance=..1] run kill @s








