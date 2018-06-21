RegisterNetEvent('socialHelp')

AddEventHandler('socialHelp', function() -- adds an event handler so it can be registered
    drawNotification("~r~Lifeinvader~w~: /lv (first name) (last name) (message)")
    drawNotification("~b~Twitter~w~: /tweet (first name) (last name) (message)")
    drawNotification("~p~Snapmatic~w~: /snapmatic (first name) (last name) (message)")
end)

function drawNotification(text) --Just Don't Edit!
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end