sub EVENT_SPAWN {
  my $a = quest::ChooseRandom(111268,111255,111255,111255,111255,111255,111268,111255,111255,111255,111255,111255,111255,111255,111255,111255,111223);
  quest::spawn2($a,0,0,-7,1001.5,178.1,125);
  }
  sub EVENT_SIGNAL {
  if ($signal == 414){
  quest::depop(111223);
  quest::depop(111268);
  quest::depop(111255);
  quest::depop();
  }
  }