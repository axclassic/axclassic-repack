sub EVENT_SPAWN {
  my $a = quest::ChooseRandom(111266,111253,111253,111253,111253,111253,111266,111253,111253,111253,111253,111253,111253,111253,111253,111253,111221);
  quest::spawn2($a,0,0,245,1143,178,0);
  }
  sub EVENT_SIGNAL {
  if ($signal == 412){
  quest::depopall(111221);
  quest::depopall(111266);
  quest::depopall(111253);
  quest::depop();
  }
  }