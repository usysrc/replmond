local todos = {}
local dones = {}

local done = function(a)
    local idx = 0
    for i, v in ipairs(todos) do
        if v == a then idx = i end
    end
    if idx > 0 then
        table.remove(todos, idx)
        table.insert(dones, a)
    end
end

local save = function()
    local f = io.open("todo.txt", "w")
    for i, v in ipairs(todos) do
        f:write(v .. "\n")
    end
    f:close()
end

local todo = function(a)
    table.insert(todos, a)
    save()
end

local load = function()
    local f = io.open("todo.txt", "r")
    if f then
        for line in f:lines() do
            todo(line)
        end
        f:close()
    end
end

local display = function(t)
    for i, v in ipairs(t or todos) do
        print(i, v)
    end
end


load()


local environment = {
    print = print,
    todo = todo,
    display = display,
    done = done,
    dones = dones,
    save = save,
    load = load,
}

local repl = require("repl")
repl.start(environment)
