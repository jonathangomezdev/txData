Config = {}

Config.UseTarget = true

Config.Teleports = {
    { 
        name = 'Use Door', 
        promptname = "teleporta", -- must be unique 
        coords = vector3(-286.89, 672.72, 113.68), -- location of the prompt
        destination = vector4(-280.28, 682.11, 113.41, 323.83), -- teleport destination
        showmarker = true,
        restrict = false, -- set to true to restrict by job/gang
        access = 'police' -- job/gang (not applicable if restrict is set to false)
    },
}
