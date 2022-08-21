#####################################
##Logic for opening sundial portals
##into Plane of Time B
##zone: Plane of Time A
##alternate method for entry by patrikpatrik
## 3rd revision 08/19/2022 - Congdar
#####################################

#sub EVENT_ZONE {
#    @corpse = $entity_list->GetCorpseList();
#    if(@corpse) {
#        foreach $ent (@corpse) {
#            $corpseName = $ent->GetOwnerName();
#            if($corpseName eq $name) {
#                #randomize corpse loc in graveyard area
#                my $ex = int(rand(140) -70);
#                my $yy = int(rand(50) -25);
#                $ent->GMMove(132+$ex, 1+$yy, 8);
#            }
#        }
#    }
#}
#END sub EVENT_ZONE

sub EVENT_ENTERZONE {
	$client->Message(15, "Welcome to Plane of Time $name! If you're here to access The Plane of Time, the portals 
					 are locked until you kill all 5 bosses guarding the sundial portals. You have 60 minutes 
					 to kill all 5 and timer starts after the 1st one killed. You must kill each one to gain portal
					 access and you'll know when all 5 are dead.");
}

sub EVENT_CLICKDOOR {
    my $d_id = ($doorid % 256);
    $client->Message(14, "Door Clicked doorid = $doorid");
    $client->Message(14, "Door Clicked d_id = $d_id");
    if(Five_Bosses_Are_Dead()) {
        if($doorid == 8) {
            $client->Message(14, "The portal, dim at first, begins to glow brighter.");
            $client->Message(14, "The portal flashes briefly, then glows steadily.");
            ##
            ## Instance Code
            ##
            ## Every player or group gets their own private zone.
            ## It can be re-entered if you die up to 3 hours.
            ## It can handle Solo players or a group with multiple Clients should some friend group with somebody
            ## by creating a unique name flag that matches with their instance so nobody enters the wrong instance
            ## 
            my $PoTimeB_Instance_Counter = 0;
            if(defined $qglobals{pop_potimeb_instances}) {
                $PoTimeb_Instance_Counter = $qglobals{pop_potimeb_instances};
            }
            else {
                $PoTimeB_Instance_Counter = 1;
            }
            if($PoTimeB_Instance_Counter >= 5) {
                $client->Message(14, "There are no available instances for Plane of Time.");
                return;
            }
            $PoTimeB_Instance_Counter = $PoTimeB_Instance_Counter + 1;
            quest::setglobal("pop_potimeb_instances", $PoTimeB_Instance_Counter, 7, "H20");
            my @clients;
            my $the_group = $client->GetGroup();
            my $nMembers = $the_group->GroupCount();
            for($i=0; $i<$nMembers; $i++) {
                my $member = $the_group->GetMember($i);
                if($the_group->IsClient($member)) {
                    push(@clients, $member);
                }
            }
            my $QGlobalValue1 = $client->GetQGlobal(${name}."potimeb_corpse");
            my $QGlobalValue2 = $client->GetQGlobal(${name}."potimeB");
            if($QGlobalValue1) {
                quest::setgroupglobal($name."potimeb_corpse", $instance_ID, 7, "M1");
                quest::MoveGroupInstance(223, $QGlobalValue2, 851, -141, 395);
                return;
            }
            elsif($QGlobalValue2) {
                quest::MoveGroupInstance(223, $QGlobalValue2, -36, 1352, 496);
                return;
            }
            else {
                my $instance_ID = quest::CreateInstance('potimeB', 2, 10800);
                my $arraySize = @clients;
                if($arraySize > 1) {
                    quest::AssignGroupToInstance($instance_ID);
                    quest::setgroupglobal("potimeB", $instance_ID, 7, "H3");
                }
                else {
                    quest::AssignToInstance($instance_ID);
                    quest::setglobal(${name}."potimeB", $instance_ID, 7, "H3");
                }
            }
            ##
            ## End Instance Code
            ##
        }
        elsif($doorid == 9) {
            $client->Message(14, "The portal, dim at first, begins to glow brighter.");
            $client->Message(14, "The portal flashes briefly, then glows steadily.");
            ##
            ## Instance Code
            ##
            ## Every player or group gets their own private zone.
            ## It can be re-entered if you die up to 3 hours.
            ## It can handle Solo players or a group with multiple Clients should some friend group with somebody
            ## by creating a unique name flag that matches with their instance so nobody enters the wrong instance
            ## 
            my $PoTimeB_Instance_Counter = 0;
            if(defined $qglobals{pop_potimeb_instances}) {
                $PoTimeb_Instance_Counter = $qglobals{pop_potimeb_instances};
            }
            else {
                $PoTimeB_Instance_Counter = 1;
            }
            if($PoTimeB_Instance_Counter >= 5) {
                $client->Message(14, "There are no available instances for Plane of Time.");
                return;
            }
            $PoTimeB_Instance_Counter = $PoTimeB_Instance_Counter + 1;
            quest::setglobal("pop_potimeb_instances", $PoTimeB_Instance_Counter, 7, "H20");
            my @clients;
            my $the_group = $client->GetGroup();
            my $nMembers = $the_group->GroupCount();
            for($i=0; $i<$nMembers; $i++) {
                my $member = $the_group->GetMember($i);
                if($the_group->IsClient($member)) {
                    push(@clients, $member);
                }
            }
            my $QGlobalValue1 = $client->GetQGlobal(${name}."potimeb_corpse");
            my $QGlobalValue2 = $client->GetQGlobal(${name}."potimeB");
            if($QGlobalValue1) {
                quest::setgroupglobal($name."potimeb_corpse", $instance_ID, 7, "M1");
                quest::MoveGroupInstance(223, $QGlobalValue2, 851, -141, 395);
                return;
            }
            elsif($QGlobalValue2) {
                quest::MoveGroupInstance(223, $QGlobalValue2, -51, 857, 496);
                return;
            }
            else {
                my $instance_ID = quest::CreateInstance('potimeB', 2, 10800);
                my $arraySize = @clients;
                if($arraySize > 1) {
                    quest::AssignGroupToInstance($instance_ID);
                    quest::setgroupglobal("potimeB", $instance_ID, 7, "H3");
                }
                else {
                    quest::AssignToInstance($instance_ID);
                    quest::setglobal(${name}."potimeB", $instance_ID, 7, "H3");
                }
            }
            ##
            ## End Instance Code
            ##
        }
        elsif($doorid == 10) {
            $client->Message(14, "The portal, dim at first, begins to glow brighter.");
            $client->Message(14, "The portal flashes briefly, then glows steadily.");
            ##
            ## Instance Code
            ##
            ## Every player or group gets their own private zone.
            ## It can be re-entered if you die up to 3 hours.
            ## It can handle Solo players or a group with multiple Clients should some friend group with somebody
            ## by creating a unique name flag that matches with their instance so nobody enters the wrong instance
            ## 
            my $PoTimeB_Instance_Counter = 0;
            if(defined $qglobals{pop_potimeb_instances}) {
                $PoTimeb_Instance_Counter = $qglobals{pop_potimeb_instances};
            }
            else {
                $PoTimeB_Instance_Counter = 1;
            }
            if($PoTimeB_Instance_Counter >= 5) {
                $client->Message(14, "There are no available instances for Plane of Time.");
                return;
            }
            $PoTimeB_Instance_Counter = $PoTimeB_Instance_Counter + 1;
            quest::setglobal("pop_potimeb_instances", $PoTimeB_Instance_Counter, 7, "H20");
            my @clients;
            my $the_group = $client->GetGroup();
            my $nMembers = $the_group->GroupCount();
            for($i=0; $i<$nMembers; $i++) {
                my $member = $the_group->GetMember($i);
                if($the_group->IsClient($member)) {
                    push(@clients, $member);
                }
            }
            my $QGlobalValue1 = $client->GetQGlobal(${name}."potimeb_corpse");
            my $QGlobalValue2 = $client->GetQGlobal(${name}."potimeB");
            if($QGlobalValue1) {
                quest::setgroupglobal($name."potimeb_corpse", $instance_ID, 7, "M1");
                quest::MoveGroupInstance(223, $QGlobalValue2, 851, -141, 395);
                return;
            }
            elsif($QGlobalValue2) {
                quest::MoveGroupInstance(223, $QGlobalValue2, -35, 1636, 496);
                return;
            }
            else {
                my $instance_ID = quest::CreateInstance('potimeB', 2, 10800);
                my $arraySize = @clients;
                if($arraySize > 1) {
                    quest::AssignGroupToInstance($instance_ID);
                    quest::setgroupglobal("potimeB", $instance_ID, 7, "H3");
                }
                else {
                    quest::AssignToInstance($instance_ID);
                    quest::setglobal(${name}."potimeB", $instance_ID, 7, "H3");
                }
            }
            ##
            ## End Instance Code
            ##
        }
        elsif($doorid == 11) {
            $client->Message(14, "The portal, dim at first, begins to glow brighter.");
            $client->Message(14, "The portal flashes briefly, then glows steadily.");
            ##
            ## Instance Code
            ##
            ## Every player or group gets their own private zone.
            ## It can be re-entered if you die up to 3 hours.
            ## It can handle Solo players or a group with multiple Clients should some friend group with somebody
            ## by creating a unique name flag that matches with their instance so nobody enters the wrong instance
            ## 
            my $PoTimeB_Instance_Counter = 0;
            if(defined $qglobals{pop_potimeb_instances}) {
                $PoTimeb_Instance_Counter = $qglobals{pop_potimeb_instances};
            }
            else {
                $PoTimeB_Instance_Counter = 1;
            }
            if($PoTimeB_Instance_Counter >= 5) {
                $client->Message(14, "There are no available instances for Plane of Time.");
                return;
            }
            $PoTimeB_Instance_Counter = $PoTimeB_Instance_Counter + 1;
            quest::setglobal("pop_potimeb_instances", $PoTimeB_Instance_Counter, 7, "H20");
            my @clients;
            my $the_group = $client->GetGroup();
            my $nMembers = $the_group->GroupCount();
            for($i=0; $i<$nMembers; $i++) {
                my $member = $the_group->GetMember($i);
                if($the_group->IsClient($member)) {
                    push(@clients, $member);
                }
            }
            my $QGlobalValue1 = $client->GetQGlobal(${name}."potimeb_corpse");
            my $QGlobalValue2 = $client->GetQGlobal(${name}."potimeB");
            if($QGlobalValue1) {
                quest::setgroupglobal($name."potimeb_corpse", $instance_ID, 7, "M1");
                quest::MoveGroupInstance(223, $QGlobalValue2, 851, -141, 395);
                return;
            }
            elsif($QGlobalValue2) {
                quest::MoveGroupInstance(223, $QGlobalValue2, -55, 569, 496);
                return;
            }
            else {
                my $instance_ID = quest::CreateInstance('potimeB', 2, 10800);
                my $arraySize = @clients;
                if($arraySize > 1) {
                    quest::AssignGroupToInstance($instance_ID);
                    quest::setgroupglobal("potimeB", $instance_ID, 7, "H3");
                }
                else {
                    quest::AssignToInstance($instance_ID);
                    quest::setglobal(${name}."potimeB", $instance_ID, 7, "H3");
                }
            }
            ##
            ## End Instance Code
            ##
        }
        elsif($doorid == 12) {
            $client->Message(14, "The portal, dim at first, begins to glow brighter.");
            $client->Message(14, "The portal flashes briefly, then glows steadily.");
            ##
            ## Instance Code
            ##
            ## Every player or group gets their own private zone.
            ## It can be re-entered if you die up to 3 hours.
            ## It can handle Solo players or a group with multiple Clients should some friend group with somebody
            ## by creating a unique name flag that matches with their instance so nobody enters the wrong instance
            ## 
            my $PoTimeB_Instance_Counter = 0;
            if(defined $qglobals{pop_potimeb_instances}) {
                $PoTimeb_Instance_Counter = $qglobals{pop_potimeb_instances};
            }
            else {
                $PoTimeB_Instance_Counter = 1;
            }
            if($PoTimeB_Instance_Counter >= 5) {
                $client->Message(14, "There are no available instances for Plane of Time.");
                return;
            }
            $PoTimeB_Instance_Counter = $PoTimeB_Instance_Counter + 1;
            quest::setglobal("pop_potimeb_instances", $PoTimeB_Instance_Counter, 7, "H20");
            my @clients;
            my $the_group = $client->GetGroup();
            my $nMembers = $the_group->GroupCount();
            for($i=0; $i<$nMembers; $i++) {
                my $member = $the_group->GetMember($i);
                if($the_group->IsClient($member)) {
                    push(@clients, $member);
                }
            }
            my $QGlobalValue1 = $client->GetQGlobal(${name}."potimeb_corpse");
            my $QGlobalValue2 = $client->GetQGlobal(${name}."potimeB");
            if($QGlobalValue1) {
                quest::setgroupglobal($name."potimeb_corpse", $instance_ID, 7, "M1");
                quest::MoveGroupInstance(223, $QGlobalValue2, 851, -141, 395);
                return;
            }
            elsif($QGlobalValue2) {
                quest::MoveGroupInstance(223, $QGlobalValue2, -27, 1103, 496);
                return;
            }
            else {
                my $instance_ID = quest::CreateInstance('potimeB', 2, 10800);
                my $arraySize = @clients;
                if($arraySize > 1) {
                    quest::AssignGroupToInstance($instance_ID);
                    quest::setgroupglobal("potimeB", $instance_ID, 7, "H3");
                }
                else {
                    quest::AssignToInstance($instance_ID);
                    quest::setglobal(${name}."potimeB", $instance_ID, 7, "H3");
                }
            }
            ##
            ## End Instance Code
            ##
        }
    }
    else {
        $client->Message(14, "The Portal is locked.");
    }
}

sub Five_Bosses_Are_Dead {
    my $Elemental = $entity_list->GetMobByNpcTypeID(219059);
    my $Undead = $entity_list->GetMobByNpcTypeID(219060);
    my $Animated = $entity_list->GetMobByNpcTypeID(219061);
    my $Golem = $entity_list->GetMobByNpcTypeID(219062);
    my $Guardian = $entity_list->GetMobByNpcTypeID(219063);
    if($Elemenal || $Undead || $Animated || $Golem || $Guardian) {
        quest::ze(15, "A booming echo bellows from across the sky, 'You have more to dispatch to appease the gods...'");
        return undef;
    }
    quest::ze(14, "A booming echo bellows from across the sky, 'Congratulations! You feel an overwhelming urge to pass through the portals. Make haste before it's too late...'");
    return 1;
}
#END sub EVENT_CLICKDOOR

