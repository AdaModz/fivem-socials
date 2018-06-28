
RegisterNetEvent('socialHelp')
AddEventHandler('socialHelp', function() -- adds an event handler so it can be registered
    drawNotification("~y~Socials~w~: Created by ~y~JackD")
    drawNotification("~r~Life~w~invader: /lv (first name) (last name) (message)")
    drawNotification("~b~Twitter~w~: /tweet (first name) (last name) (message)")
    drawNotification("~p~Snapmatic~w~: /snapmatic (first name) (last name) (message)")
    drawNotification("~r~Uber~w~: /uber (message)")
    drawNotification("~r~Uber~w~: /blackmarket (message)")
end)

RegisterNetEvent('invalidArgs')
AddEventHandler('invalidArgs', function(platform, names)
    if names then
        drawNotification("~r~Invalid Arguments~w~: e.g. /" .. platform .. " (first name) (last name) (message)")
    else
        drawNotification("~r~Invalid Arguments~w~: e.g. /" .. platform .. " (message)")
    end
end)

function drawNotification(text) --Just Don't Edit!
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end