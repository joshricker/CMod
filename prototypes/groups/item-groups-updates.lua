data.raw.item["splitter"].subgroup = "transport-splitters"
data.raw.item["fast-splitter"].subgroup = "transport-splitters"
data.raw.item["express-splitter"].subgroup = "transport-splitters"
data.raw.item["transport-belt"].subgroup = "transport-belt"
data.raw.item["fast-transport-belt"].subgroup = "transport-belt"
data.raw.item["express-transport-belt"].subgroup = "transport-belt"
data.raw.item["underground-belt"].subgroup = "transport-ground"
data.raw.item["fast-underground-belt"].subgroup = "transport-ground"
data.raw.item["express-underground-belt"].subgroup = "transport-ground"
data.raw.item["pipe"].subgroup = "transport-pipe"
data.raw.item["pipe-to-ground"].subgroup = "transport-pipe-ground"
data.raw.item["splitter"].order = "a"
data.raw.item["fast-splitter"].order = "b"
data.raw.item["express-splitter"].order = "c"
data.raw.item["transport-belt"].order = "a"
data.raw.item["fast-transport-belt"].order = "b"
data.raw.item["express-transport-belt"].order = "c"
data.raw.item["underground-belt"].order = "a"
data.raw.item["fast-underground-belt"].order = "b"
data.raw.item["express-underground-belt"].order = "c"
data.raw.item["pipe"].order = "a"
data.raw.item["pipe-to-ground"].order = "a"

for i,v in ipairs({"loader","fast-loader","express-loader"}) do
    data.raw.item[v].subgroup = "transport-loader"
    data.raw.item[v].order = "a"..i
    data.raw.item[v].group = "transport"
end

if data.raw.item["void-chest"] then
    data.raw.item["void-chest"].group = "transport"
    data.raw.item["void-chest"].subgroup = "transport-void"
    data.raw.item["void-chest"].order = a
end

if data.raw.item["void-pipe"] then
    data.raw.item["void-pipe"].group = "transport"
    data.raw.item["void-pipe"].subgroup = "transport-void"
    data.raw.item["void-pipe"].order = b
end

if data.raw.item["transport-belt-beltbox"] then
    for i,v in ipairs({"transport-belt-beltbox","fast-transport-belt-beltbox","express-transport-belt-beltbox"}) do
        data.raw.recipe[v].subgroup = "transport-dl-beltbox"
        data.raw.recipe[v].order = "a"..i
        data.raw.item[v].subgroup = "transport-dl-beltbox"
        data.raw.item[v].order = "a"..i
    end
end

if data.raw.item["transport-belt-loader"] then
    for i,v in ipairs({"transport-belt-loader","fast-transport-belt-loader","express-transport-belt-loader"}) do
        data.raw.item[v].subgroup = "transport-dl-loader"
        data.raw.item[v].order = "a"..i
        data.raw.recipe[v].subgroup = "transport-dl-loader"
        data.raw.recipe[v].order = "a"..i
    end
end
