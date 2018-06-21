local lifeinvader_webhook_enabled = 0
local lifeinvader_webhook = "REPLACE ME"
local tweet_webhook_enabled = 0
local tweet_webhook = "REPLACE ME"
local snapmatic_webhook_enabled = 0
local snapmatic_webhook = "REPLACE ME"

RegisterServerEvent('webhook:lifeinvader')
AddEventHandler('webhook:lifeinvader', function(name, message)
    if lifeinvader_webhook_enabled == 1 then
        -- Send message to discord to say that the Lifeinvader command was used.
        lv_wh_content = "**Lifeinvader** " ..name.. " used Lifeinvader command: **" .. message .. "**"
        PerformHttpRequest(lifeinvader_webhook, process, "POST", "content=".. lv_wh_content)
    end
end)

RegisterServerEvent('webhook:twitter')
AddEventHandler('webhook:twitter', function(name, message)
    if tweet_webhook_enabled == 1 then
        -- Send message to discord to say that the Lifeinvader command was used.
        tw_wh_content = "**Twitter** " ..name.. " used Twitter command: **" .. message .. "**"
        PerformHttpRequest(tweet_webhook, process, "POST", "content=".. tw_wh_content)
    end
end)

RegisterServerEvent('webhook:snapmatic')
AddEventHandler('webhook:snapmatic', function(name, message)
    if snapmatic_webhook_enabled == 1 then
        -- Send message to discord to say that the Lifeinvader command was used.
        sm_wh_content = "**Scapmatic** " ..name.. " used Snapmatic command: **" .. message .. "**"
        PerformHttpRequest(snapmatic_webhook, process, "POST", "content=".. sm_wh_content)
    end
end)