-- Deposit Refill Every Sol
-- Author: Poom
-- Restores all resource deposits every Sol cycle

local DEPOSIT_LABELS = {
    "SurfaceDeposit",
    "SubsurfaceDeposit",
    "TerrainDeposit",
}

local function RefillAllDeposits()
    local count = 0

    for _, label_name in ipairs(DEPOSIT_LABELS) do
        local deposits = UICity.labels[label_name] or empty_table
        for i = 1, #deposits do
            local deposit = deposits[i]
            if not deposit then goto continue end

            local current = rawget(deposit, "amount") or 0
            local max_val = rawget(deposit, "max_amount") or 0

            if max_val > 0 and current < max_val then
                deposit.amount = max_val
                count = count + 1
            end

            ::continue::
        end
    end

    if count > 0 then
        print("[DepositRefill] Restored " .. count .. " deposits")
    end
end

OnMsg.NewDay = function()
    RefillAllDeposits()
end
