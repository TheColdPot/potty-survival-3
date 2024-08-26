
scoreboard players add @a[tag=thrust_user] sweeping_timer 1
execute as @a[tag=thrust_user] at @s run particle minecraft:scrape ^ ^1 ^0.5 0.5 0.3 0.5 1 5
tag @a[scores={sweeping_timer=10..}] remove thrust_user
scoreboard players reset @a[scores={sweeping_timer=10..}] sweeping_timer
execute if entity @a[tag=thrust_user] run schedule function potty.combat:sweeping/thrust/particle 1t


#不是哥们你说让我写完你再改的你现在直接改了什么意思
# try this!


