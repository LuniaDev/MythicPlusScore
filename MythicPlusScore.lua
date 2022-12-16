local ScoreTooltip = function(tooltip, resultID)
    local data = C_LFGList.GetSearchResultInfo(resultID)
    local score_leader = data.leaderOverallDungeonScore
    local score_color = C_ChallengeMode.GetDungeonScoreRarityColor(data.leaderOverallDungeonScore)

    tooltip:AddLine("Leader Mythic+ Score: " .. format(score_color:WrapTextInColorCode(tostring(score_leader))))
    tooltip:Show()
end

hooksecurefunc("LFGListUtil_SetSearchEntryTooltip", ScoreTooltip)