##a_flame_mephit.pl npcid - 223088

sub EVENT_DEATH {
    my $x = $npc->GetX();
    my $y = $npc->GetY();
    my $z = $npc->GetZ();
    my $h = $npc->GetHeading();
    quest::signalwith(223190,14028,4000);
    quest::spawn2(223089,0,0,$x,$y + 5,$z,$h); #a flame mephit
    quest::spawn2(223095,0,0,$x,$y - 5,$z,$h); #an_inferno_mephit
}

