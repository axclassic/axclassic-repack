#an_undead_guardian npcid - 223116

sub EVENT_DEATH {
    quest::signalwith(223180,14048,0); #Triggers #undead_counter.pl
}
