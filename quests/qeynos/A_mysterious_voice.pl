sub EVENT_SPAWN {
    $x = $npc->GetX();
    $y = $npc->GetY();
    quest::set_proximity($x - 40, $x + 40, $y - 40, $y + 40);
}
sub EVENT_ENTER {
    if ($ulevel >= 15 && !defined $qglobals{"Messenger"}) {
        $client->Message(15,"A mysterious voice whispers to you, 'Warehnn Awlne has just joined the Wayfarers Brotherhood. He may be found in the Mermaid's Lure. He has some information about them, and how you can start doing odd jobs for them. You looked like the heroic sort, so I wanted to contact you . . . discreetly.'");
    }
} 
