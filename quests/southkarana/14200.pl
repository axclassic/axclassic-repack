#Wild_Turkey ID 14200 ##
 sub EVENT_SLAY {
	  $client->Message(5,"$mname just killed you! When you return talk to Corny Scrarecrow for further instructions.");
	  quest::delglobal("Thanksscarecrow");
   quest::setglobal("Thanksdead", 1, 5, "F");
   quest::signalwith(14224,745,0);
    }
 sub EVENT_DEATH{
my $meatbag = $entity_list->GetMobID($userid);
      if($entity_list->GetMobID($userid)) {
	  quest::delglobal("Thanksscarecrow");
	  quest::setglobal("Thankswild");
	  quest::signalwith(14224,725,0);
	  }
	  elsif($meatbag->IsBot()) {
	  quest::delglobal("Thanksscarecrow");
	  quest::setglobal("Thankswild");
	  quest::signalwith(14224,725,0);
	  }
	  else{
	  #Do Nothing;
	}
	}