sub EVENT_SAY { 
    if($text=~/Hail/i) {
        quest::say("Good day to you. $name. I am Culkin Ironstove. one of five merchants that provide goods for those who practice the art of baking. Search my wares if you wish. and know that if I do not possess that which you require. then there are four other Ironstoves who are just as glad as I to aid you where we can.");
    }
}

sub EVENT_ITEM {
    my $stuff = (\%itemcount);
    my $yes = 2;
    foreach my $k (keys(%{$stuff})) {
        next if($k == 0);
        $yes = 1;
    }
    if($yes == 1) {
        $client->Message(14, "I don't need this $name. Take it back.");
        plugin::return_items(\%itemcount);
    }
    if($platinum != 0 || $gold !=0 || $silver != 0 || $copper != 0) {
        $client->Message(14, "Thanks for the coin!");
    }
}
#END of FILE Zone:poknowledge  ID:202091 -- Culkin_Ironstove 

