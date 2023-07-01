Config = {}

Config.Debug = false

Config.Blip = {
    blipName = 'Dirty Work', -- Config.Blip.blipName
    blipSprite = 'blip_ambient_tithing', -- Config.Blip.blipSprite 
    blipScale = 0.2 -- Config.Blip.blipScale
}

-- dirtyworks locations
Config.dirtyworksLocations = {
    {   -- Moonshine 1
        name        = 'Moonshine dirtyworks',
        dirtyworksid  = 'dirtyworks1',
        cartspawn   = vector4(-2379.5459, 483.9995, 129.1983, 323.6565), 
        cart        = 'cart05',
        cargo       = '',
        light       = '',
        startcoords = vector3(-2377.2229, 476.2617, 131.2398),
        endcoords   = vector3(2905.9021, 1447.4835, 57.626400),
        showgps     = true,
        showblip    = true
    },
    {   -- Moonshine 2
        name        = 'Moonshine dirtyworks',
        dirtyworksid  = 'dirtyworks2',
        cartspawn   = vector4(-6002.3633, -3126.5730, -1.9192, 39.1189), 
        cart        = 'cart05',
        cargo       = '',
        light       = '',
        startcoords = vector3(-6003.3999, -3133.9880, -1.3391),
        endcoords   = vector3(-1888.5275, 1320.7963, 199.690000),
        showgps     = true,
        showblip    = true
    },
    {   -- Moonshine 3
        name        = 'Moonshine dirtyworks',
        dirtyworksid  = 'dirtyworks3',
        cartspawn   = vector4(1842.5948, -1823.1910, 43.9180, 71.7374), 
        cart        = 'cart05',
        cargo       = '',
        light       = '',
        startcoords = vector3(1844.1267, -1830.6840, 44.0031),
        endcoords   = vector3(2444.6089, 2107.7239, 172.7181),
        showgps     = true,
        showblip    = true
    },
}

-- https://github.com/femga/rdr3_discoveries/blob/f729ba03f75a591ce5c841642dc873345242f612/vehicles/vehicle_modding/vehicle_propsets.lua
-- https://github.com/femga/rdr3_discoveries/blob/f729ba03f75a591ce5c841642dc873345242f612/vehicles/vehicle_modding/vehicle_lantern_propsets.lua
