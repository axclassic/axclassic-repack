# Doomspade event spawner
#

sub EVENT_SPAWN {
  $doomshade = 0;
}

sub EVENT_SIGNAL {
  if ($signal == 99) {
    $doomshade += 1;
    if ($doomshade == 4) {
      quest::settimer("spawndoom",5);
    }
  }
}

sub EVENT_TIMER {
  if ($timer eq "spawndoom") {
   my $a = quest::ChooseRandom(176088,176088,176088,176088,176110);
    quest::ze(13, "You are filled with fright as a tormented spirit is released upon the land.");
    quest::spawn2($a,0,0,120,-297.5,5,63.5);
    quest::stoptimer("spawndoom");
    quest::depop();
  }
 }

# EOF Zone: umbral ID: 176087 NPC: a_tortured_scream

