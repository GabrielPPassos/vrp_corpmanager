
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

--============================= Configuração =============================--

-- Membros Groups
local policia = "Policia"
local verdes = "Verdes"
local amarelos = "Amarelos"
local roxos = "Roxos"
local paramedico = "Paramedico"

-- Chefes Groups
local cmd = "Comandante Policia"
local dir = "Diretor"
local verdesl = "VerdesLider"
local amarelosl = "AmarelosLider"
local roxosl = "RoxosLider"

--============================= Comandos =============================--

------------------------------------------
-- CONTRATANDO 
------------------------------------------

RegisterCommand('contratar', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local player = vRP.getUserSource(user_id)
        -- ARGS 1 = CORP, ARGS 2 = ID
    if args[1] == "Policia" and args[2] then 
        if vRP.hasGroup(user_id, cmd) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.addUserGroup(nuser_id, policia)
            TriggerClientEvent("Notify", player, "sucesso", "Você contratou o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi contratado pra Polícia")
        end
    elseif args[1] == "EMS" and args[2] then
        if vRP.hasGroup(user_id, diretor) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.addUserGroup(nuser_id, paramedico)
            TriggerClientEvent("Notify", player, "sucesso", "Você contratou o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi contratado pra EMS")
        end
    elseif args[1] == "Verdes" and args[2] then
        if vRP.hasGroup(user_id, verdesl) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.addUserGroup(nuser_id, verdes)
            TriggerClientEvent("Notify", player, "sucesso", "Você contratou o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi contratado pros Verdes")
        end
    elseif args[1] == "Amarelos" and args[2] then
        if vRP.hasGroup(user_id, amarelosl) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.addUserGroup(nuser_id, amarelos)
            TriggerClientEvent("Notify", player, "sucesso", "Você contratou o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi contratado pros Amarelos")
        end
    elseif args[1] == "Roxos" and args[2] then
        if vRP.hasGroup(user_id, roxosl) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.addUserGroup(nuser_id, roxos)
            TriggerClientEvent("Notify", player, "sucesso", "Você contratou o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi contratado pros Roxos")
        end
    end
end)

------------------------------------------
-- DEMITINDO
------------------------------------------

RegisterCommand('demitir', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local player = vRP.getUserSource(user_id)
        -- ARGS 1 = CORP, ARGS 2 = ID
    if args[1] == "Policia" and args[2] then 
        if vRP.hasGroup(user_id, cmd) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.removeUserGroup(nuser_id, policia)
            TriggerClientEvent("Notify", player, "sucesso", "Você demitiu o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi demitido da Polícia")
        end
    elseif args[1] == "EMS" and args[2] then
        if vRP.hasGroup(user_id, diretor) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.removeUserGroup(nuser_id, paramedico)
            TriggerClientEvent("Notify", player, "sucesso", "Você demitiu o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi demitido da EMS")
        end
    elseif args[1] == "Verdes" and args[2] then
        if vRP.hasGroup(user_id, verdesl) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.removeUserGroup(nuser_id, verdes)
            TriggerClientEvent("Notify", player, "sucesso", "Você demitiu o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi demitido dos Verdes")
        end
    elseif args[1] == "Amarelos" and args[2] then
        if vRP.hasGroup(user_id, amarelosl) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.removeUserGroup(nuser_id, amarelos)
            TriggerClientEvent("Notify", player, "sucesso", "Você demitiu o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi demitido dos Amarelos")
        end
    elseif args[1] == "Roxos" and args[2] then
        if vRP.hasGroup(user_id, roxosl) or vRP.hasGroup(user_id, "admin") then
            local nuser_id = parseInt(args[2])
            local nplayer = vRP.getUserSource(nuser_id)
            vRP.removeUserGroup(nuser_id, roxos)
            TriggerClientEvent("Notify", player, "sucesso", "Você demitiu o ID: ".. nuser_id)
            TriggerClientEvent("Notify", nplayer, "aviso", "Você foi demitido dos Roxos")
        end
    end
end)
