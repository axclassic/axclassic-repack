# Shaman Epic 1.0
# Ooglyn
# Erud's Crossing (erudxing)
# Aramid September 2006
	
my $ready = quest::saylink("ready", 1);

sub EVENT_SAY {
    if($text=~/hail/i) {
        quest::say("Ooooh, it you, $name. Me's been waitin for you cuz our frenz say you comin an need da test. So's I gib you da test. Hmm, now where me put it? Ooglyn been waiting for sign for so long dat me forget where me put test. Keep your eyes out for sign while me look for test. Oh, hey, $name, they gib you gem? I need dat gem, please, heheh.");
    }
    if($text=~/ready/i) {
        quest::say("Ok $name, let us be off.");
        quest::start(64);
    }
}

sub EVENT_WAYPOINT {
    if($wp == 5) {
        quest::say("Ok, here is place for you to for waiting. Hab fun $name!");
        quest::settimer("Wait1", 120);
    }
}

sub EVENT_TIMER {
    if($timer eq "Wait1") {
        quest::stoptimer("Wait1");
        # Spawn Srafen_the_Soaked
        quest::spawn2(98046,0,0,4210.8,-1609.6,-289.4,181);
        quest::depop();
    }
}

sub EVENT_ITEM {
   if(plugin::check_handin(\%itemcount, 1666 => 1)) {
       quest::say("Ahhh, tank you, now me can...OH LOOK!! DA SIGN!!!! Oh, sorry you missed it. The sign show you where to wait for da test. Follow me...I like you so I take you there. We goin for a swim, $name!");
       quest::say("Tell me when you $ready.");
       quest::faction(342,10);
       quest::ding();
       quest::exp(10000);
   }
}

# End of File - NPCID 98009 - Ooglyn