sub EVENT_SAY { 
if($text=~/Ahhh, I feel much better now.../i){
quest::say("Areeeeewwwww"); }
}

#Angelox
sub EVENT_DEATH {
	$gnoll = int(rand(100));
	if ($gnoll <= 10) {
		$spawngnoll = quest::spawn2(111158,0,0,$x,$y,$z,0);
		$attack = $entity_list->GetMobID($spawngnoll);
		$gnollattack = $attack->CastToNPC();
		$gnollattack->AddToHateList($client, 1);
	}
}

#END of FILE Zone:frozenshadow  ID:111047 -- a_shadowbone 

