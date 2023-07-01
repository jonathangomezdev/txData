# RexshackGaming
- discord : https://discord.gg/s5uSk56B65

# Dependancies
- rsg-core
- rsg-menu
- rsg-input
- rsg-npc

# Installation
- ensure that the dependancies are added and started
- ensure that you have the trade items in rsg-core -> shared -> items.lua
- add rsg-trader.sql your database
- add rsg-trader to your resources folder
- adjust the config.lua as required

# Add NPC
- add  the following to rsg-npc -> config.lua
```lua
    {    -- valentine trader 
        model = `A_M_M_BLWObeseMen_01`,
        coords = vector4(-270.4844, 679.92742, 113.32597, 231.27438),
    },
```

# Starting the resource
- add the following to your server.cfg file : ensure rsg-trader
