local Utils = {};

function Utils.predicatedEmptyFilter(item)
    return item:hasTag("EmptyClayFilter") or item:getType() == "EmptyClayFilter";
end

function Utils.predicateFilter(item)
    return item:hasTag("ClayFilter") or item:getType() == "ClayFilter";
end

function Utils.predicatedFullFilter(item)
    return Utils.predicateFilter(item) and item:getUsedDelta() >= 1;
end

function Utils.predicateFilterNotFull(item)
    return Utils.predicateFilter(item) and item:getUsedDelta() < 1;
end

function Utils.predicateEmptyFilterOrNotFull(item)
    return Utils.predicateEmptyFilter(item) or Utils.predicateFilterNotFull(item);
end


return Utils;