#phase4_trigger.pl npcid - 223157

my $god_counterI = 1;

sub EVENT_SPAWN {
    $god_counterI = 1;
    #flavor
    quest::signalwith(223111, 1003, 2000);
    #Terris Thule
    quest::spawn2(223075,0,0,-310,307,365,95);
    #Saryrn
    quest::spawn2(223076,0,0,-320,-316,358,32.5);
    #Tallon Zek
    quest::spawn2(223077,0,0,405,-84,358,192);
    #Vallon Zek
    quest::spawn2(223078,0,0,405,75,358,192);
}    

sub EVENT_SIGNAL {
    if($signal == 12010) {
        $god_counterI = $god_counterI + 1;
        if($god_counterI >= 5) {
            #event success
            quest::ze(15, "You are halfway through this phase. Click on the fountain to continue.");
            #sets flag to portal through fountain
            quest::setglobal("portal4", "1", 7, "H1");
            $god_counterI = 1;
            quest::depop();
        }
    }
    if($signal == 12011) {
        #depop Vallons crew after his death
        $god_counterI = $god_counterI + 1;
        #quest::settimer("vallon",300);
        if($god_counterI >= 5) {
            #event success
            quest::ze(15, "You are halfway through this phase. Click on the fountain to continue.");
            #sets flag to portal through fountain
            quest::setglobal("portal4", "1", 7, "H1");
            $god_counterI = 1;
            quest::depop();
        }
    }
    if($signal == 12012) {
        #depop Saryrns crew after her death
        $god_counterI = $god_counterI + 1;
        #quest::settimer("saryrn",1800);
        if($god_counterI >= 5) {
            #event success
            quest::ze(15, "You are halfway through this phase. Click on the fountain to continue.");
            #sets flag to portal through fountain
            quest::setglobal("portal4", "1", 7, "H1");
            $god_counterI = 1;
            quest::depop();
        }
    }
    if($signal == 12013) {
        #depop Terris crew after her death
        $god_counterI = $god_counterI + 1;
        #quest::settimer("terris",1800);
        if($god_counterI >= 5) {
            #event success
            quest::ze(15, "You are halfway through this phase. Click on the fountain to continue.");
            #sets flag to portal through fountain
            quest::setglobal("portal4", "1", 7, "H1");
            $god_counterI = 1;
            quest::depop();
        }
    }
}

