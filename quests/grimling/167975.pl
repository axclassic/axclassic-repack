

sub EVENT_SPAWN {
    my $buffed = quest::saylink("buffed", 1);
    quest::say("Ok, this is the first camp $name, tell me when you are $buffed for battle!");
}

sub EVENT_SAY {
    if($text=~/buffed/i) {
        quest::say("To arms, now! Rush into the heart of the beast and emerge victorious, as we have discussed! Charge!");
        quest::follow($userid);
    }
}

sub EVENT_SIGNAL {
    if($signal == 7206) {
        quest::say("Well done $name! Hand me your Polished Acrylia Sphere and I need to inspect it for damage.");
        quest::exp(10000);
        quest::faction(132, 10);
        quest::depop(167979);
        quest::depop(167974);
        quest::depop();
    }
}

sub EVENT_ITEM {
    if(plugin::check_handin(\%itemcount,3681=>1)) {
        quest::say("A fine Garrison you are turning out to be.");
        quest::summonitem(3681);
        quest::say(" I am not sure why I needed to inspect it but orders are orders. Fare well $name.");
        quest::depop();
    }
}

sub EVENT_DEATH {
    quest::shout("Oh No! We have failed the mission!");
    quest::signalwith(167974,7204,0);
}
