# A_Smoldering_Elemental (223124)

sub EVENT_DEATH {
    quest::ze(15, "Congdar A_Smoldering_Elemental signaling the fire_counter and fire_trigger.");
    #Triggers #fire_counter.pl
    quest::signalwith(223182, 14068, 2000);
    #Triggers #fire_trigger.pl
    quest::signalwith(223173, 14035, 2000);
}

