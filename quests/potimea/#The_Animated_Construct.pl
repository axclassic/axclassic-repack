#####################################
##The_Animated_Construct 3 of 5 bosses.
##accessing plane of time B
##associated with doorid 11
##alternate method for entry by patrikpatrik
## 3rd revision 11/19/2016
## Files associated player.pl Udunir_Dagorod
#####################################

sub EVENT_DEATH {
    #If player manages to kill the final blow
	quest::signalwith(219065, 10505, 0); #Triggers Udunir_Dagorod's signal
	if(!defined $qglobals{'portalab'} || ($qglobals{'portalab'} < 4)) {
		quest::ze(15, "A booming echo bellows from across the sky, 'You have more to dispatch to appease the gods...'");
	}
	elsif($qglobals{'portalab'} == 4) {
        quest::ze(14, "A booming echo bellows from across the sky, 'Congratulations! You feel an overwhelming urge to pass through the portals. Make haste before it's too late...'");
    }
    else {
        quest::ze(15, "A booming echo bellows from across the sky, 'You have more to dispatch to appease the gods...'");
    }
}#END sub EVENT_DEATH
