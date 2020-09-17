# Death.pl npcid - 223251
# Used in case bot raid crashes and player gets booted out.
# Only GM's can use this feature and last case scenario for now

sub EVENT_SAY {
    if($status == 255) {
        if($text=~/help/i) {
            quest::delglobal("blockout");
            quest::delglobal("blockout2");
            quest::depopzone(1); #improved reset
            quest::repopzone();
            quest::doanim(15);
        }
    }

    if($text=~/hail/i) {
        quest::say("Yes?");
        quest::doanim(5);
    }
}#END sub EVENT_SAY

sub EVENT_WAYPOINT {
    if($wp == 2) {
        my $rolls = int(rand(200));
        if($rolls <= 2) {
            quest::emote("pats his pockets and says, 'Hmm, now where did I put my keys?'");
		}
	}

    if($wp == 4) {
        my $rolls = int(rand(200));
		if($rolls <= 2) {
            quest::emote("pats his pockets and says, 'Hmm, now where did I put my keys?'");
		}
	} 

    if($wp == 6) {
        my $rolls = int(rand(200));
		if($rolls <= 2) {
            quest::emote("pats his pockets and says, 'Hmm, now where did I put my keys?'");
		}
	}

    if($wp == 8) {
        my $rolls = int(rand(200));
		if($rolls <= 2) {
            quest::emote("pats his pockets and says, 'Hmm, now where did I put my keys?'");
		}
	}

    if($wp == 10) {
        my $rolls = int(rand(200));
		if($rolls <= 2) {
            quest::emote("pats his pockets and says, 'Hmm, now where did I put my keys?'");
		}
	}

    if($wp == 12) {
        my $rolls = int(rand(200));
		if($rolls <= 2) {
            quest::emote("pats his pockets and says, 'Hmm, now where did I put my keys?'");
		}
	}
}#END sub EVENT_WAYPOINT

