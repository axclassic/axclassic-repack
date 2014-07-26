sub EVENT_SAY {
my $Agnostic = quest::saylink("Agnostic", 1);
my $Bertoxxulous = quest::saylink("Bertoxxulous", 1);
my $Bristlebane = quest::saylink("Bristlebane", 1);
my $Erollisi_Marr = quest::saylink("Erollisi_Marr", 1);
my $Karana = quest::saylink("Karana", 1);
my $Rodcet_Nife = quest::saylink("Rodcet_Nife", 1);
my $Tunare = quest::saylink("Tunare", 1);
my $East_Freeport = quest::saylink("East_Freeport", 1);
my $North_Qeynos = quest::saylink("North_Qeynos", 1);
my $Greater_Faydark = quest::saylink("Greater_Faydark", 1);
my $dare = quest::saylink("dare", 1);
my $gift = quest::saylink("gift", 1);
my $innocent = quest::saylink("innocent", 1);
my $he = quest::saylink("he", 1);
my $Elmion = quest::saylink("Elmion", 1);
my $Leggings = quest::saylink("Leggings", 1);
if (($text=~/Rogue/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("A Fine choice, the Way of the Rogue, but I have a few more questions for you. Which Deity did you choose? $Agnostic, $Bertoxxulous, $Bristlebane, $Erollisi_Marr, $Karana, $Rodcet_Nife, or $Tunare?");
  }
  if (($text=~/Agnostic/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("Following the way of The Agnostic? A Good Choice, So you will not commit to the existence or non-existence of any Deity. This is your choice.");
    quest::say("One more question for you $name, What city would you prefer to be sent to? $East_Freeport, $North_Qeynos or $Greater_Faydark.");
	}
  if (($text=~/Bertoxxulous/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("Following the way of Bertoxxulous? A Good Choice, Followers of The Plaguebringer believe the only truth on Norrath is that everything dies. They view the decay of flesh as a thing of ultimate beauty .");
    quest::say("On your way then, I will send you to North Qeynos. Hand this note to Hanns Krieghor, He is your Guildmaster of the Rogues."); 
	quest::say("Be sure you find Soulbinder Novalu in South Qeynos and have yourself bound to the area before you venture out. Good luck $name.");
	quest::summonitem(119867);
	quest::movepc(2,287,82,-16);
  }
  if (($text=~/Bristlebane/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("Following the way of The Bristlebane? A Good Choice, Followers of The King of thieves believe in having fun at the expense of nearly all else.");
    quest::say("One more question for you $name, What city would you prefer to be sent to? $East_Freeport, $North_Qeynos or Greater_Faydark.");
  }
  if (($text=~/Erollisi_Marr/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("Following the way of The Erollisi Marr? A Good Choice, Followers of The Queen of Love believe that love can conquer all, while not being naive about it.");
    quest::say("On your way then, I will send you to East Freeport. Hand this note to Elisi Nasin, She is your Guildmaster of the Rogues."); 
	quest::say("Be sure you find Soulbinder Grunson in East Freeport and have yourself bound to the area before you venture out. Good luck $name.");
	quest::summonitem(18745);
	quest::movepc(10,-869,-315,-108);
  }
  if (($text=~/Karana/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("Following the way of The Karana? A Good Choice, Followers of The Rainkeeper believe in the absolute power of storms.");
    quest::say("On your way then, I will send you to North Qeynos. Hand this note to Hanns Krieghor, He is your Guildmaster of the Rogues."); 
	quest::say("Be sure you find Soulbinder Novalu in South Qeynos and have yourself bound to the area before you venture out. Good luck $name.");
	quest::summonitem(119867);
	quest::movepc(2,287,82,-16);
  }
   if (($text=~/Rodcet_Nife/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("Following the way of The Rodcet Nife? A Good Choice, Followers of The Prime Healer take oath to fight disease and death until one or the other takes them.");
    quest::say("On your way then, I will send you to North Qeynos. Hand this note to Hanns Krieghor, He is your Guildmaster of the Rogues."); 
	quest::say("Be sure you find Soulbinder Novalu in South Qeynos and have yourself bound to the area before you venture out. Good luck $name.");
	quest::summonitem(119867);
	quest::movepc(2,287,82,-16);
  }
   if (($text=~/Tunare/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("Following the way of Tunare? A Good Choice, Followers of the Mother of all believe we are all Tunare's children and seek to help Norrath.");
    quest::say("On your way then, I will send you to Kelethin. Hand this note to Tylfon. He is your Guildmaster of the Rogues."); 
	quest::say("Be sure you find Soulbinder Oakstout in Kelethin and have yourself bound to the area before you venture out. Good luck $name.");
	quest::summonitem(119848);
	quest::movepc(54,-210,-501,161);
  }
   if (($text=~/East_Freeport/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("On your way then, I will send you to East Freeport. Hand this note to Elisi Nasin, She is your Guildmaster of the Rogues."); 
	quest::say("Be sure you find Soulbinder Grunson in East Freeport and have yourself bound to the area before you venture out. Good luck $name.");
	quest::summonitem(18745);
	quest::movepc(10,-869,-315,-108);
  }
  if (($text=~/North_Qeynos/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("On your way then, I will send you to North Qeynos. Hand this note to Hanns Krieghor, He is your Guildmaster of the Rogues."); 
	quest::say("Be sure you find Soulbinder Novalu in South Qeynos and have yourself bound to the area before you venture out. Good luck $name.");
	quest::summonitem(119867);
	quest::movepc(2,287,82,-16);
  }
  if (($text=~/Greater_Faydark/i) && ($ulevel == 1) && ($class eq "Rogue")) {
    quest::say("On your way then, I will send you to Kelethin. Hand this note to Tylfon. He is your Guildmaster of the Rogues."); 
	quest::say("Be sure you find Soulbinder Oakstout in Kelethin and have yourself bound to the area before you venture out. Good luck $name.");
	quest::summonitem(119848);
	quest::movepc(54,-210,-501,161);
	}
    if($text=~/hail/i){
    quest::say("You $dare to speak with a loyal member of the Scouts of Tunare?!! You are truly foolish!! Run away while you still can.");
    }
    if($text=~/dare/i){
    quest::say("So. you think you have what it takes to be a Scout of Tunare? Come back with 2 gold and 2 rusty daggers and I'll make it worth your while.");
    }
    if($text=~/possesion/i){
    quest::say("Dont act $innocent! Tunare's $gift, our peoples most prize possesion goes missing just after you arrive, admit your guilt and we might go easy on you");
    }
	if($text=~/gift/i){
    quest::say("The bright green Gem of Tunare was discovered by the Scouts of Tunare in a trunk of a great tree. The lightning streaked down and split the tree in two and there was the gem , Tunare's gift to the people of Kelethin. It has no magical properties , but it represents the glory of Tunare. It appears as a small Emerald shard. Do you still claim you are immocent?");
    }
    if($text=~/innocent/i){
    quest::say("Well if you didnt take it then who did? Wait, It couldnt be, but then if not you then it must be... That dirty son of an orc!, I knew $he was acting strange these last few days!");
    }
	if($text=~/he/i){
    quest::say("Faldor Hendrys, a scout that joined our ranks a few seasons back. You must find him and reclaim the Gem of Tunare for all our people. Alas , now it has been stolen by Faldor Hendrys and only his brother $Elmion Hendrys could know of his whereabouts.");
    }
	if($text=~/Elmion/i){
    quest::say("Seek out the Feir'Dal, Elmion. He was last heard telling the local bar patrons that he was off to do some adventuring at the lake near the Estate. What that is, I do not know. If you should find the Gem of Tunare, return it to me and I will reward you with Scout's Silvermesh $Leggings.");
    }
	if($text=~/Leggings/i){
    quest::say("Scout silvermesh leggings are part of the garb of the Scouts of Tunare. Besides greater protection in battle, they offer a protection against magic and their unique powers boost the wearer's agility. They are meant for the scouts only and, as such, are not just given away.");
 }
}

sub EVENT_ITEM {
my $Rogue = quest::saylink("Rogue", 1);
my $possesion = quest::saylink("possesion", 1);
if (plugin::check_handin(\%itemcount, 18784 => 1) && $class eq "Rogue") { 
    quest::say("I am Tyflon of the Scouts of tunare. A few years ago, The Rathe server was created in order to bring back the feel of the orginal EQ zones. Many things have changed over the years and with those changes, some things could not be done anymore.");
    quest::say("You were sent to me because there is a problem with getting you to the correct city with the correct guild summons.");
	quest::say("Since you are talking to me I must assume you are a $Rogue?");
	}
elsif(($gold >= 2) && (plugin::check_handin(\%itemcount, 7007 => 2))){
    quest::say("Well, well. I didn't think you could do it. Here's your cut and don't be surprised that it's not much because it's your first lesson. Remember. the smaller the operation. the bigger the share, and the richest rogues have the tightest lips.");
    quest::summonitem(7021);
    quest::givecash("0","5","0","0");
    quest::faction(283,5);
    quest::ding();
	quest::exp(100);
	quest::emote('Glares at you with a dangerous look in his eyes');
    quest::say("How dare you! We invite you into our guild with open arms, and this is how you repay us? By stealing our most valuable $possesion?");
    }
elsif (plugin::check_handin(\%itemcount, 13322 => 1)) {
    quest::say("You found it! I cant begin to imagine the effort this must have taken, and so quickly as well. You have our deepest gratitude $name ");
    quest::summonitem(3315);
    quest::faction(283,50);
    quest::faction(43,10);
    quest::faction(92,10);
    quest::faction(413,10);
    quest::faction(33,-20);
    quest::ding();
    quest::exp(1000);
    }
elsif (plugin::check_handin(\%itemcount, 119848 => 1)) {
    quest::emote('scans the note and sizes you up with a look.');
    quest::say("So you wish to join the Scouts of Tunare eh? A hard life you have chosen for yourself but,I welcome you to our guild. Here, Take this Tunic and wear it with Pride!");
    quest::summonitem(58760); #Whisperwalker's Apprentice Tunic
    quest::ding();
	quest::faction(283, 10);  #Scouts of Tunare
    quest::exp(1000);
	quest::rebind(51,-223,-511,161);
	}
	else { 
    #do all other handins first with plugin, then let it do disciplines
    plugin::try_tome_handins(\%itemcount, $class, 'Rogue');
    plugin::return_items(\%itemcount);
    quest::say("I have no need of this, take it back.");
 }
}


    #END of FILE Zone:gfaydark  ID:54087 -- Tylfon - Edited by Aeolwind

