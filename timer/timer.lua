local timers = {}
timers.interval = 1
timers.time = love.timer.getTime()
timers.functions = {}

function timers:setInterval(n)
  assert(type(n) == "number","Se requiere un tipo de dato numérico.")
  self.interval = n
end

function timers:getInterval()
  return self.interval
end

function timers:addFunction(func)
  assert(type(func) == "function","Se requiere un tipo de dato función.")
  table.insert(self.functions,func)
end

function timers:update()
  local f
  if (love.timer.getTime() - self.time) >= self.interval then
    for _,f in ipairs(self.functions) do
      f()
    end
    self.time = love.timer.getTime()
  end
end

return timers