sub EVENT_ATTACK{
{quest::emote("lunges forward, saliva dripping from its fanged jaw.");}
}

sub EVENT_SPAWN
{
	quest::delglobal("sstate");
	quest::setglobal("sstate",3,3,"F");
	$sstate=undef;
	quest::delglobal("defder1");
	quest::setglobal("defder1",0,3,"F");
	$defder1=undef;
	quest::delglobal("defder2");
	quest::setglobal("defder2",0,3,"F");
	$defder2=undef;
	quest::delglobal("defder3");
	quest::setglobal("defder3",0,3,"F");
	$defder3=undef;
	quest::delglobal("defder4");
	quest::setglobal("defder4",0,3,"F");
	$defder4=undef;
	quest::delglobal("defder5");
	quest::setglobal("defder5",0,3,"F");
	$defder5=undef;
}