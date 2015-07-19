sub EVENT_SPAWN {
my $buffed = quest::saylink("buffed", 1);
       quest::say("Ok, Beyond these rocks is thier second encampment, tell me when you are $buffed for battle!");
       }
       sub EVENT_SAY {
       if ($text=~/buffed/i) {
     quest::say("To arms, now! Rush into the heart of the beast and emerge victorious, as we have discussed! Charge!");
     quest::follow($userid);
     }
}
sub EVENT_SIGNAL {
     if($signal == 7216){
     quest::say("Well done $name! Hand me your Mauled Acrylia Sphere and I will upgrade it, that way when you return to the outpost, I know you are ready for the next camp.");
     quest::depop(167981);
     quest::depop(167982);
     }
}
sub EVENT_ITEM {
     if (plugin::check_handin(\%itemcount,120203=>1)) {
     quest::say("A fine Garrison you shall be $name.");
     quest::summonitem(120204);
     quest::say(" I know, its not really an upgrade, but I gotta keep track of who has done what somehow.");
     quest::depop();
     }
}
sub EVENT_DEATH {
     quest::shout("Oh No! We have failed the mission!");
     quest::signalwith(167982,7214,0);
}     