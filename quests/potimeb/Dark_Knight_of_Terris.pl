# Dark_Knight_of_Terris.pl npcid - 223058

sub EVENT_AGGRO {
    quest::say("What twisted reasoning would possess you to travel here and challenge the gods themselves? Your madness knows no bounds! The only sensible course of action is to end your miserable existence.");
}

sub EVENT_DEATH {
    quest::signalwith(223154, 11070, 4000);
    quest::say("This is not over, fools. My death here is merely the beginning. I will return to you in your most horrible nightmares!");
}

