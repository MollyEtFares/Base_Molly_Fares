ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

local Superette = {
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 255, 125}, Title = "LTD"},
	Data = { currentMenu = "Stock du magasin !", "LTD" },
    Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result)
			
            if btn.name == "Pain" then

                TriggerServerEvent('buyPain')

            end

            if btn.name == "Hamburger" then

                TriggerServerEvent('buyHamburger')
    
            end

            if btn.name == "Sandwich" then

                TriggerServerEvent('buySandwich')
        
            end

            if btn.name == "Eau" then

                TriggerServerEvent('buyEau')
        
            end
                
            if btn.name == "IceTea" then

                TriggerServerEvent('buyIceTea')
            
            end

            if btn.name == "Lait" then

                TriggerServerEvent('buyLait')
                
            end

            if btn.name == "Petit gateau" then

                TriggerServerEvent('buyCupCake')
                    
            end

            if btn.name == "Café" then

                TriggerServerEvent('buyCafe')
                        
            end
                            
            if btn.name == "~b~Abonnement" then

                OpenMenu("~b~Abonnement")
            end
            
            if btn.name == "NordVPN" then
                
                TriggerServerEvent("BuyVpn")
            end

            end,
    },
	
	Menu = {
        ["Stock du magasin !"] = {
            b = {
                {name = "Pain", ask = "> ~g~5$", askX = true},
                {name = "Hamburger", ask = "> ~g~20$", askX = true},
                {name = "Sandwich", ask = "> ~g~10$", askX = true},
                {name = "Eau", ask = "> ~g~5$", askX = true},
                {name = "IceTea", ask = "> ~g~7$", askX = true},
                {name = "Lait", ask = "> ~g~10$", askX = true},
                {name = "Petit gateau", ask = "> ~g~15$", askX = true},
                {name = "Café", ask = "> ~g~10$", askX = true},
                {name = "~b~Abonnement", ask = "→", askX = true},
            }
        },

        ["~b~Abonnement"] = {
            b = {
                {name = "NordVPN", ask = "> ~g~50$", askX = true},
            }
        }
    }
}

--- Parler au ped

local positionSuperette = {
    {x = 25.82, y = -1345.49, z = 29.5},
    {x = 373.875,   y = 325.896,  z = 102.66},
	{x = 2557.458,  y = 382.282,  z = 107.722}, 
	{x = -3038.939, y = 585.954,  z = 6.97},
	{x = -3241.927, y = 1001.462, z = 11.850}, 
	{x = 547.431,   y = 2671.710, z = 41.176}, 
	{x = 1961.464,  y = 3740.672, z = 31.363}, 
	{x = 2678.916,  y = 3280.671, z = 54.261}, 
    {x = 1729.216,  y = 6414.131, z = 34.057}, 
    {x = 1135.808,  y = -982.281,  z = 45.45}, 
	{x = -1222.93, y = -906.99,  z = 11.35}, 
	{x = -1487.553, y = -379.107,  z = 39.163}, 
	{x = -2968.243, y = 390.910,   z = 14.054}, 
	{x = 1166.024,  y = 2708.930,  z = 37.167}, 
	{x = 1392.562,  y = 3604.684,  z = 33.995}, 
	{x = -1393.409, y = -606.624,  z = 29.319}, 
    {x = -48.519,   y = -1757.514, z = 28.47}, 
	{x = 1163.373,  y = -323.801,  z = 68.27}, 
	{x = -707.67,  y = -914.22,  z = 18.26}, 
	{x = -1820.523, y = 792.518,   z = 137.20},
	{x = 1698.388,  y = 4924.404,  z = 41.083}
}

 Citizen.CreateThread(function()
    while true do
         Citizen.Wait(0)

         for k in pairs(positionSuperette) do

             local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
             local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionSuperette[k].x, positionSuperette[k].y, positionSuperette[k].z)

             if dist <= 1.0 then
              ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parler avec ~b~Apu !")
				if IsControlJustPressed(1,51) then 
                   CreateMenu(Superette)
			    end
             end
         end
    end
 end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(positionSuperette) do

        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionSuperette[k].x, positionSuperette[k].y, positionSuperette[k].z)

        if (GetDistanceBetweenCoords(coords, dist, true) < 1.0) then
            ESX.DrawMissionText("Appuyez sur [~b~E~s~] pour parler avec ~b~Apu !", 20)
            DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
            if IsControlJustReleased(1, 51) then
                CreateMenu(Superette)
              end
            end
        end
    end
end)

-- Blips


Citizen.CreateThread(function()

	for i=1, #Config.ShopsL, 1 do

		local blip = AddBlipForCoord(Config.ShopsL[i].x, Config.ShopsL[i].y, Config.ShopsL[i].z)

		SetBlipSprite (blip, 52)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.8)
		SetBlipColour (blip, 59)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("LDT")
        EndTextCommandSetBlipName(blip)
	end

end)

-- Display markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        local coords = GetEntityCoords(GetPlayerPed(-1))

		for k,v in pairs(positionSuperette) do
				if(Config.Type ~= -1 and GetDistanceBetweenCoords(coords, positionSuperette[k].x, positionSuperette[k].y, positionSuperette[k].z, true) < Config.DrawDistance) then
                    DrawMarker(Config.Type, positionSuperette[k].x, positionSuperette[k].y, positionSuperette[k].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
			end
		end
	end
end)