sub EVENT_SPAWN {
    quest::settimer("SpawnAttendant", 60);
}

sub EVENT_SIGNAL {
    if ($signal == 43) {
        quest::settimer("3hours",10800);
    }
    if ($signal == 333) {
        quest::stoptimer("3hours");
        quest::unique_spawn(228010,0,0,-1112,-46,-285.58,60);
    }
}

sub EVENT_TIMER {
    if($timer eq "SpawnAttendant") {
        quest::stoptimer("SpawnAttendant");
        quest::unique_spawn(228010,0,0,-1112,-46,-285.58,60);
    }
    if ($timer eq "3hours") {
        quest::stoptimer("3hours");
        quest::unique_spawn(228010,0,0,-1112,-46,-285.58,60);
        quest::signalwith(228121,66,0);
        quest::signalwith(228122,66,1);
        quest::signalwith(228114,333,2);
        quest::signalwith(228115,333,3);
        quest::signalwith(228116,333,4);
        quest::signalwith(228117,333,5);
    }
}
