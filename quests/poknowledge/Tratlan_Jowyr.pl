#Tratlan_Jowyr.pl
#The Magic Pool


sub EVENT_SAY {
  if($text=~/Hail/i) {
    quest::emote("looks deeply into the pool in front of him, 'Well darn it! I still can't see anything in this blasted [pool], can you Wicas?");
    #Need to trigger Wicas to say: "Nothing at all. Do you think that he led us astray?" right after this.
    quest::signalwith(202301, 1, 1000);
  }
  if($text=~/pool/i) {
    quest::emote("glances up at you like he just noticed your presence, 'This pool. There is supposed to be strong [magic] in it.'");
  }
  if($text=~/magic/i) {
    quest::say("Scrying magic. These pools can supposedly glance into all of the knowledge past, present, and future.");
    #Need to trigger Wicas to say: "I think we should just do what [Tarerd] wants us to do."
    quest::signalwith(202301, 2, 1000);
  }
}
  
  
sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 15960 => 1)) {#The Reflecting Pools of Tanaan
    quest::emote("leafs quickly through the book. 'Thank you, it will take quite some time to go through all the information here. Here is a little something for your troubles.'");
    quest::summonitem(9321); #Fine Cut, Diamond Inlaid Mask
    quest::gainexp(1485000);#Can do at 30, giving 5% of 31 xp...gotta run to droga, bit of a pain.
  }
  else {
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
}
#I think these are for his pet.  I copied them from what was previously in this file.
sub EVENT_SPAWN
{
	$x = $npc->GetX();
	$y = $npc->GetY();
	quest::set_proximity($x - 90, $x + 90, $y - 90, $y + 90);
}

sub EVENT_ENTER
{
	quest::signal(202273,5); #Qadar
}#END of FILE Zone:poknowledge  ID:202061 -- Tratlan_Jowyr 

