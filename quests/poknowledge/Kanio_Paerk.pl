sub EVENT_SAY { 
    if($text=~/Hail/i) {
        quest::say("Well met. my friend. I am Kanio Paerk. a former warrior and tradesmen of the people of Kelethin. I and my lovely wife. Halena. have come to New Tanaan in hopes of furthering our knowledge. However. we have found the recent influx of Norrathian travelers to be quite intriguing and we wish to offer our aid where we can. As a blacksmith. I have been able to forge many components that will aid other adepts as myself in their own further quest for knowledge. Search my inventory. if you wish. and I will be more than pleased to accommodate you where I can.");
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
#END of FILE Zone:poknowledge  ID:202069 -- Kanio_Paerk 

