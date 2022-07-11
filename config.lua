Config = {}

Config.SQL = 'oxmysql' --- oxmysql or ghmattisql

Config.Eye = "true" 

Config.PedModel = "a_m_m_farmer_01" 
Config.PedHash = 0x94562DD7  

Config.Seller = {
    coords = vector4(175.59, -1278.88, 28.20, 343.03),
}

Config.Prices = {
    ['wood_pro'] = {350, 450}
}

 Config.Locations = {
    ["lumberjack"] = {
        [1] = {label = ('LumberJack'), coords = vector4(-541.06, 5379.39, 70.52, 336.87)}
    },
    ["process1"] = {
        [1] = {label = ('Cut Process'), coords = vector4(-552.29, 5327.77, 73.64, 339.43)}
    },
    ["seller"] = {
        [1] = {label = ('Wood Seller'), coords = vector4(175.84, -1278.25, 29.16, 167.74)}
    }
}

Config.Alerts = {
    ["cut_wood"] = "Cutting Wood",
    ["proc_wood"] = "Processing Wood",
    ["polish_wood"] = "Polishing Wood",
    ["sell_wood"] = "Selling Wood",

    ["no_item"] = "You dont have Right item",
}



