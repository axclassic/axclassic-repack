############################################
# ZONE: East Freeport (freporte)
# DATABASE: PEQ-Velious
# LAST EDIT DATE: May 1,2005
# VERSION: 1.0
# BASE QUEST BY: PEQ Team
# DEVELOPER: MWMDRAGON
#
# *** NPC INFORMATION ***
#
# NAME: Elisi_Nasin
# ID: 10108
# TYPE: Rogue Guild Master
# RACE: Human
# LEVEL: 61
#
# *** ITEMS GIVEN OR TAKEN ***
#
# A tattered note ID-18745
# Brown Faded Tunic ID-13568
#
# *** QUESTS INVOLVED IN ***
#
#1 - Newbie Note
#
# *** QUESTS AVAILABLE TO ***
#
#1 - Rogue
#
# *** NPC NOTES ***
#
#
#
############################################


sub EVENT_SAY
{ 

if($text=~/Hail/i)
{
quest::say("Listen. this is a pretty busy [operation] I run here.  I certainly don't have any spare time to sit around and chit-chat with you all day. got it?");
}

if($text=~/operation/i)
{
quest::say("Look. $name . I don't have time for this.  Let's just say importing exotic goods is our main interest. along with a few other profitable ventures.  Now quit pestering me. or you'll force me to sic Grenny here on ya.");
}

}

sub EVENT_ITEM
{ 
  # A tattered note ID-18745
 if (plugin::check_handin(\%itemcount, 18745 => 1))
 {
   quest::say("Welcome to the Coalition of Tradesfolk underground. We like to keep a low profile around here and not draw any unneeded attention to our operations. you following me? I hope so. for your sake. Anyways. Nestral T'Gaza is in charge with helping out our newest members. Go see her as soon as you get a chance.");
   
   # Brown Faded Tunic ID-13568
   quest::summonitem(13568); #Brown Faded Tunic
   quest::ding();
   quest::faction(31, 10);  #Carson McCabe
    quest::faction(47, 10);  #Coalition of Tradefolk
    quest::faction(48, 10);  #Coalition of Tradefolk Underground
    quest::faction(53, 10); #Corrupt Qeynos Guards
	quest::faction(105, 10); #The Freeport Militia
    quest::exp(1000);
	quest::rebind(10,-869,-315,-108);
 }
      else {
   quest::say("I have no use for this.");
   plugin::return_items(\%itemcount);
   }
}
#END of FILE Zone:freporte  ID:10108 -- Elisi_Nasin


