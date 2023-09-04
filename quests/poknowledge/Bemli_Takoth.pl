sub EVENT_SAY { 
    if($text=~/Hail/i) {
        quest::say("gives a generous smile. his broad face warmly lighting with his greetings. 'Welcome. welcome traveler! My my. let's have a look at ye. shall we? Hrm. . . yes. I can see how ye indeed be quite the adventurer! I can sense the ways o'the world about ye. Those feet 'ave traveled. but they have much more t'travel yet. I be thinkin'! Well. traveler. whilst ye be in New Tanaan. allow yeself a bit o'rest an' recreation. Let ye feet cool from the countless miles that lay behind 'em. but dinnae let ye mind fall weary! Nor ye hands if ye be a man o'the trades. If ye be a potter. by chance. then the fates are surely in your favor this day! I meself am a potter an' would be more pleased than a weary Deputy with the first mug o'Jumjum o'the day t'help ye! Search me wares. friend and dinnae be shy t'purchase anything that might catch yer fancy.'");
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
        quest::say("I don't need this $name. Take it back.");
        plugin::return_items(\%itemcount);
    }
    if($platinum != 0 || $gold !=0 || $silver != 0 || $copper != 0) {
        quest::say("Thanks for the coin!");
    }
}
#END of FILE Zone:poknowledge  ID:202084 -- Bemli_Takoth 

