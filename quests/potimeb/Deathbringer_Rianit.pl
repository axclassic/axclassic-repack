
sub EVENT_AGGRO {
    quest::say("If you were looking to play war, mortals, you will get all that and more. Prepare to soak my battlefield in your blood!");
}

sub EVENT_DEATH {
    quest::signalwith(223154,11050,4000);
    quest::emote("coughs, 'Not bad, for mere amateurs. A commendable exertion on your part.'");
}

