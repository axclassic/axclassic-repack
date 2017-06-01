sub EVENT_SPAWN {
    $x = $npc->GetX();
    $y = $npc->GetY();
    quest::set_proximity($x - 40, $x + 40, $y - 40, $y + 40);
}
sub EVENT_ENTER {
    if ($ulevel >= 15 && !defined $qglobals{"Messenger"}) {
        $client->Message(15,"A mysterious voice whispers to you, 'Jowra McGynnall has just joined the Wayfarers Brotherhood. She may be in McDaniels Smokes and Spirits. He has some information about them, and how you can start doing odd jobs for them. You looked like the heroic sort, so I wanted to contact you . . . discreetly.'");
    }
} 
