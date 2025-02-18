local RMlib = {}

local showlog = false     -- Debug log message toggle

function RMlib.debuglog(msg)
  if showlog then log(msg) end
  return showlog
end



function RMlib.check_set_value(entry, prop, val)
  if entry then
    if type(prop) == "table" then
      if #prop > 1 then
        RMlib.debuglog("  At lv "..#prop.. ": "..prop[1])
        return RMlib.check_set_value(entry[prop[1]], {table.unpack(prop,2)}, val)
      else
        RMlib.debuglog("    Set "..prop[1].. " = `"..tostring(val).."`")
        entry[prop[1]] = val
        return true
      end
    else
      RMlib.debuglog("    Set "..prop.. " = `"..tostring(val).."`")
      entry[prop] = val
      return true
    end
  else
    if type(prop) == "table" then
      log("Failed to set prop `"..prop[1].."` = `"..tostring(val).."`")
    else
      log("Failed to set prop `"..prop.."` = `"..tostring(val).."`")
    end
    return false
  end
end



return RMlib