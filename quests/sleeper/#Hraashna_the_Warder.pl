sub EVENT_DEATH {
$nanzata = $entity_list->GetMobByNpcTypeID(128113);
$ventani = $entity_list->GetMobByNpcTypeID(128104);
$tukaarak = $entity_list->GetMobByNpcTypeID(128102);
if (!$nanzata && !$ventani && !$tukaarak) {
    quest::shout("Warders, I have fallen. These fools have unleashed doom upon the world!");    quest::depop(128114);	quest::spawn2(128089,1,0,-1499,-2344.8,-1052.8,0);
}
else { 
quest::shout("Warders, I have fallen. Prepare yourselves, these fools are determined to unleash doom!");
}
 }
