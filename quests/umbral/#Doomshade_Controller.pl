#Doomshade_Controller#
sub EVENT_SPAWN {
 $x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 450, $x + 450, $y - 450, $y + 450);
	}
sub EVENT_ENTER {
    quest::depopall(176105);
    quest::spawn2(176087,0,0,124,2872,410,252);
    quest::depop();
 }