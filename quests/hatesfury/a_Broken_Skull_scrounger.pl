sub EVENT_DEATH {
    quest::signalwith(228107,23,0); # NPC: #Navigator_counter
    quest::signalwith(228113,33,1); # NPC: #drunk_counter
}
