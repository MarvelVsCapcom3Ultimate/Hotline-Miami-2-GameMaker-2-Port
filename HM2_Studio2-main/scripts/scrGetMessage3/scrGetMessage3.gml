function scrGetMessage3(argument0) {
	if room=rmTutorialFloor2MovieSet {
	if argument0=0 {
	my_id.sprite=sprFaceDirector
	objEffector.sprite=sprFaceDirector
	my_id.line1[0]="CUT!"
	my_id.line2[0]="..."
	my_id.line1[1]="ALRIGHT, THAT'S A WRAP!"
	my_id.line2[1]="GOOD JOB, PEOPLE."
	my_id.line1[2]="WE'LL DO A RE-SHOOT TOMORROW,"
	my_id.line2[2]="SO TRY TO STAY IN CHARACTER."
	my_id.line1[3]="AND WE'RE FILMING THE SCENE WHERE YOU"
	my_id.line2[3]="CARRY HER TO YOUR CAR ON THURSDAY."
	my_id.messages=3
	}

	if argument0=1 {
	my_id.sprite=sprFaceDirector
	objEffector.sprite=sprFaceDirector
	my_id.line1[0]="NOW, FOR YOU TWO"
	my_id.line2[0]="..."
	my_id.line1[1]="PIG MAN, WELL DONE..."
	my_id.line2[1]="BUT DON'T BE AFRAID TO BE ROUGHER."
	my_id.line1[2]="YOU'RE SUPPOSED TO BE KILLING PEOPLE!"
	my_id.line2[2]="MAKE IT LOOK LIKE YOU REALLY HIT THEM."
	my_id.line1[3]="AND YOU THERE, BLONDIE. YOU NEED TO"
	my_id.line2[3]="WORK ON YOUR FEMININITY..."
	my_id.line1[4]="ACT MORE HELPLESS AND SCARED..."
	my_id.line2[4]="YOU KNOW... MORE GIRLY!"
	my_id.line1[5]="NOW GO HOME AND GET SOME REST!"
	my_id.line2[5]="I'LL SEE YOU BOTH TOMORROW, OK?"
	my_id.messages=5
	}
	}


	if room=rmFansHeadQuarters {
	my_id.messages=0
	if argument0=0 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=sprMaskTiger
	my_id.line1[0]="Man, this party stinks."
	my_id.line2[0]="I fucking hate these people."
	}
	if argument0=1 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=sprMaskSwan2
	my_id.line1[0]="Who invited all these morons?"
	my_id.line2[0]=""
	}
	if argument0=2 {
	my_id.sprite=sprMaskZebra
	objEffector.sprite=sprMaskZebra
	my_id.line1[0]="..."
	my_id.line2[0]=""
	}
	if argument0=3 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=sprMaskBear
	my_id.line1[0]="What do you guys think about tonight?"
	my_id.line2[0]="We gonna do it?"
	}
	if argument0=4 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=sprMaskTiger
	my_id.line1[0]="I don't see why not."
	my_id.line2[0]="I'm sick of this shit."
	}
	if argument0=5 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=sprMaskSwan2
	my_id.line1[0]="Yeah let's do it!"
	my_id.line2[0]=""
	}
	if argument0=6 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=sprMaskBear
	my_id.line1[0]="The weapons are in the car right?"
	my_id.line2[0]=""
	}
	if argument0=7 {
	my_id.sprite=sprMaskZebra
	objEffector.sprite=sprMaskZebra
	my_id.line1[0]="So we are actually doing this?"
	my_id.line2[0]="..."
	}
	if argument0=8 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=sprMaskBear
	my_id.line1[0]="..."
	my_id.line2[0]=""
	}
	if argument0=9 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=sprMaskSwan2
	my_id.line1[0]="Yeah, let's go do this!"
	my_id.line2[0]=""
	}
	}

	if room=rmFansLevel2Floor1 {

	if argument0=0 {
	my_id.sprite=sprHenchmanFace1
	objEffector.sprite=sprHenchmanFace1
	my_id.line1[0]="Look, I don't know..."
	my_id.line2[0]="I told you..."
	my_id.line1[1]="There's something strange going on."
	my_id.line2[1]="You know what I mean?"
	my_id.line1[2]="Can you see that? Look, right there."
	my_id.line2[2]="Can you see it? What is that?"
	my_id.line1[3]="Someone must have slipped me something."
	my_id.line2[3]="I mean, this can't be happening."
	my_id.line1[4]="It's like... Wow. Are those masks?"
	my_id.line2[4]="Are we in the jungle?"
	my_id.line1[5]="I want to go to the jungle."
	my_id.line2[5]="I quit. Last week. Did I tell you that?"
	my_id.line1[6]="No more, I tell you."
	my_id.line2[6]="I'm out... Done. Finished."
	my_id.messages=6
	}

	if argument0=1 {
	my_id.sprite=sprHenchmanFace2
	objEffector.sprite=sprHenchmanFace2
	my_id.line1[0]="What... Are you hitting me?"
	my_id.line2[0]="I... I just wanna go home."
	my_id.line1[1]="Can you call Mary?"
	my_id.line2[1]="She'll... She'll come get me."
	my_id.line1[2]="Is that blood... Am I bleeding?"
	my_id.line2[2]="Do I need to go to the hospital?"
	my_id.line1[3]="Guys..?"
	my_id.line2[3]="Look, I just want to go home, ok?"
	my_id.line1[4]="I'm not looking for trouble... Haha..."
	my_id.line2[4]="You know? Right?"
	my_id.messages=3
	}

	if argument0=2 {
	my_id.sprite=sprFaceCellPhone
	objEffector.sprite=sprFaceCellPhone
	my_id.line1[0]="YOU HAVE REACHED THE WRONG"
	my_id.line2[0]="NUMBER. "
	my_id.line1[1]="PLEASE HANG UP AND TRY AGAIN."
	my_id.line2[1]="*BEEP* *BEEP*"
	my_id.messages=1
	}

	}


	if room=rmTalkShow {
	my_id.messages=0

	if argument0=0 {
	my_id.sprite=sprFaceHost
	objEffector.sprite=sprFaceHost
	my_id.line1[0]="I'd like to welcome our next "
	my_id.line2[0]="guest on the show"
	my_id.line1[1]="Famous from critically"
	my_id.line2[1]="acclaimed movies such as:"
	my_id.line1[2]="'Blue Ocean', 'The Calm',"
	my_id.line2[2]="and 'Land of Trees'!"
	my_id.line1[3]="Here's Martin Brown!"
	my_id.line2[3]=""
	my_id.line1[4]="Hi Martin, how are you?"
	my_id.line2[4]=""
	my_id.messages=4
	}
	if argument0=1 {
	my_id.sprite=sprFacePig
	objEffector.sprite=sprFacePig
	my_id.line1[0]="I'm good"
	my_id.line2[0]=""
	}
	if argument0=2 {
	my_id.sprite=sprFaceHost
	objEffector.sprite=sprFaceHost
	my_id.line1[0]="Now your latest film is a bit of"
	my_id.line2[0]="a step in a new direction for you"
	my_id.line1[1]="A lot of people are surprised by this,"
	my_id.line2[1]="some are even calling you a sell-out"
	my_id.line1[2]="..."
	my_id.line2[2]=""
	my_id.line1[3]="What is your response to that?"
	my_id.line2[3]=""
	my_id.messages=3
	}
	if argument0=3 {
	my_id.sprite=sprFacePig
	objEffector.sprite=sprFacePig
	my_id.line1[0]="A sell-out, huh?"
	my_id.line2[0]=""
	my_id.line1[1]="How do you mean?"
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=4 {
	my_id.sprite=sprFaceHost
	objEffector.sprite=sprFaceHost
	my_id.line1[0]="Well, some are saying that 'Midnight"
	my_id.line2[0]="Animal' is just another 'slasher-flick'"
	}
	if argument0=5 {
	my_id.sprite=sprFacePig
	objEffector.sprite=sprFacePig
	bgm_FadeVol(global.currentsong,25,3500)
	sound_loop(sndPounding)
	my_id.line1[0]="That's not how I see it..."
	my_id.line2[0]=""
	my_id.line1[1]="I have wanted to do this"
	my_id.line2[1]="for a long time"
	my_id.line1[2]="Kill kids. Strangle them."
	my_id.line2[2]="Beat people's heads in."
	my_id.line1[3]="Rip their eyes out."
	my_id.line2[3]="..."
	my_id.line1[4]="Just listen to them scream,"
	my_id.line2[4]="see them die in agony."
	my_id.line1[5]="I finally get to do that now."
	my_id.line2[5]="..."
	my_id.messages=5
	}
	if argument0=6 {
	my_id.sprite=sprFaceHost
	objEffector.sprite=sprFaceHost
	my_id.line1[0]="Okay..."
	my_id.line2[0]=""
	}
	if argument0=7 {
	audio_stop_sound(global.currentsong);
	audio_play_sound(Videodrome);
	sound_play(sndDirector)
	with objPigInterview {
	sprite_index=sprPigInterviewStand
	image_index=0
	image_speed=0.2
	}
	my_id.sprite=sprFacePig
	objEffector.sprite=sprFacePigAngry
	my_id.line1[0]="Don't look at me like that."
	my_id.line2[0]=""
	}
	if argument0=8 {
	my_id.sprite=sprFaceHostAnxious
	objEffector.sprite=sprFaceHostAnxious
	my_id.line1[0]="What?"
	my_id.line2[0]=""
	}
	if argument0=9 {
	my_id.sprite=sprFacePig
	objEffector.sprite=sprFacePigAngry
	my_id.line1[0]="I see, this is a dream right?"
	my_id.line2[0]=""
	}
	if argument0=10 {
	my_id.sprite=sprFaceHostTwitch
	objEffector.sprite=sprFaceHostTwitch
	my_id.line1[0]="What do you mean?"
	my_id.line2[0]=""
	}
	if argument0=11 {
	my_id.sprite=sprFacePig
	objEffector.sprite=sprFacePigAngry
	my_id.line1[0]="This, all of this..."
	my_id.line2[0]="It's just a dream right?"
	}
	if argument0=12 {
	my_id.sprite=sprFaceHostAnxious
	objEffector.sprite=sprFaceHostTwitch
	my_id.line1[0]="I'm not sure I follow..."
	my_id.line2[0]=""
	}
	if argument0=13 {
	my_id.sprite=sprFacePig
	objEffector.sprite=sprFacePigAngry
	my_id.line1[0]="Okay, pause!"
	my_id.line2[0]=""
	}
	if argument0=14 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=sprFaceRichard
	my_id.line1[0]="You think this is a dream?"
	my_id.line2[0]="Well then, maybe it's time to wake up?"
	}
	if argument0=15 {
	my_id.sprite=sprFacePigButcher
	objEffector.sprite=sprFacePigButcher
	my_id.line1[0]="Who are you?"
	my_id.line2[0]=""
	}
	if argument0=16 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=sprFaceRichard
	my_id.line1[0]="Who I am? I'm not the one"
	my_id.line2[0]="being interviewed here am I?"
	my_id.line1[1]="I think I should be the one asking"
	my_id.line2[1]="the questions..."
	my_id.messages=1
	}
	if argument0=17 {
	my_id.sprite=sprFacePigButcher
	objEffector.sprite=sprFacePigButcher
	my_id.line1[0]="..."
	my_id.line2[0]=""
	}
	if argument0=18 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=sprFaceRichard
	my_id.line1[0]="This 'movie' you're making..."
	my_id.line2[0]="You know how it ends?"
	}
	if argument0=19 {
	my_id.sprite=sprFacePigButcher
	objEffector.sprite=sprFacePigButcher
	my_id.line1[0]="..."
	my_id.line2[0]=""
	}
	if argument0=20 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=sprFaceRichard
	my_id.line1[0]="I believe there's a pretty big twist"
	my_id.line2[0]="at the end. I doubt you'll like it."
	my_id.line1[1]="In fact I don't think anyone will."
	my_id.line2[1]="..."
	my_id.line1[2]="Maybe you ought to get out before it's"
	my_id.line2[2]="too late?"
	my_id.messages=2
	}
	if argument0=21 {
	my_id.sprite=sprFacePigButcher
	objEffector.sprite=sprFacePigButcher
	my_id.line1[0]="I don't think so."
	my_id.line2[0]=""
	}
	if argument0=22 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=sprFaceRichard
	my_id.line1[0]="You really enjoy hurting other"
	my_id.line2[0]="people, don't you?"
	}
	if argument0=23 {
	my_id.sprite=sprFacePigButcher
	objEffector.sprite=sprFacePigButcher
	my_id.line1[0]="It's just a film"
	my_id.line2[0]="..."
	}
	if argument0=24 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=sprFaceRichard
	my_id.line1[0]="'Just a film' huh?"
	my_id.line2[0]="That's one way to look at it..."
	}

	}

	if room=rmCamp1 {
	if argument0=0 {
	my_id.sprite=sprFaceGeneral
	objEffector.sprite=sprFaceGeneral
	my_id.line1[0]="TIME TO MOVE OUT, SON!"
	my_id.line2[0]="..."
	my_id.line1[1]="CHOOSE YOUR WEAPON WISELY,"
	my_id.line2[1]="AND MAKE THEM SHOTS COUNT."
	my_id.line1[2]="LORD KNOWS HOW MANY RUSKIES"
	my_id.line2[2]="WE HAVE OUT THERE..."
	my_id.line1[3]="DO BE CAREFUL, MY BOY. DON'T WANT"
	my_id.line2[3]="ANY OF MY MEN DYING ON ME, YA HEAR?"
	my_id.line1[4]="GOT A SPECIAL SUPPLY DELIVERY"
	my_id.line2[4]="COMING IN TONIGHT."
	my_id.line1[5]="WOULDN'T WANT TO DRINK ALL"
	my_id.line2[5]="THAT BOURBON ALONE..."
	my_id.line1[6]="NOT IN THIS GODDAMN PLACE!"
	my_id.line2[6]=""
	my_id.messages=6
	}
	}

	if room=rmJunglePlace3 {
	if argument0=0 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=sprFaceNicke
	my_id.line1[0]="JAMES HERE, I'M DONE WEEDING"
	my_id.line2[0]="OUT THE GARDEN."
	my_id.line1[1]="HOW'S IT GOING WITH THE YARD?"
	my_id.line2[1]="..."
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprFaceWalkieTalkie
	objEffector.sprite=sprFaceWalkieTalkie
	my_id.line1[0]="HANK HERE, RAN OUT OF FUEL"
	my_id.line2[0]="FOR THE LAWNMOWERS..."
	my_id.line1[1]="WE'RE AT THE GAS STATION ON"
	my_id.line2[1]="24th AND 7th."
	my_id.line1[2]="HEAD ON OVER AND WE'LL SHARE"
	my_id.line2[2]="THE RIDE BACK."
	my_id.messages=2
	}
	}

	if room=rmHotelUpstairs {
	if argument0=0 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=sprFaceNicke
	my_id.line1[0]="DAN HERE, I'M DONE CLEANING OUT"
	my_id.line2[0]="THE SUITES UPSTAIRS."
	my_id.line1[1]="HAVE ANY NEW GUESTS ARRIVED?"
	my_id.line2[1]="..."
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprFaceWalkieTalkie
	objEffector.sprite=sprFaceWalkieTalkie
	my_id.line1[0]="THIS IS MIKE, I'M OUTSIDE GREETING"
	my_id.line2[0]="THE VIPS."
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=sprFaceNicke
	my_id.line1[0]="ALRIGHT, I'LL COME DOWN AND COLLECT"
	my_id.line2[0]="THEIR LUGGAGE."
	my_id.messages=0
	}
	}

	if room=rmEndCamp1 {
	if argument0=0 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=sprFaceFatSquad
	my_id.line1[0]="HMMM"
	my_id.line2[0]="..."
	my_id.line1[1]="LOOKS LIKE WE GOT OUR HANDS ON SOME"
	my_id.line2[1]="GOOD INTEL HERE..."
	my_id.line1[2]="WE SHOULD GET THIS BACK TO THE"
	my_id.line2[2]="COLONEL AS SOON AS POSSIBLE!"
	my_id.line1[3]="NOT SURE WHAT TO DO WITH THE"
	my_id.line2[3]="CAPTIVES THOUGH..."
	my_id.line1[4]="MAYBE WE SHOULD JUST LET BARNES"
	my_id.line2[4]="HAVE HIS WAY WITH THEM."
	my_id.line1[5]="WOULD MAKE THE JOG BACK TO CAMP"
	my_id.line2[5]="A HELL OF A LOT EASIER!"
	my_id.line1[6]="*sigh*"
	my_id.line2[6]="..."
	my_id.messages=6
	}
	if argument0=1 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=sprFaceBlackSquad
	my_id.line1[0]="HEY, LOOK AT THIS CHUBBY ASSHOLE!"
	my_id.line2[0]=""
	my_id.line1[1]="IS IT JUST ME... OR DOES HE LOOK"
	my_id.line2[1]="A BIT LIKE DANIELS?"
	my_id.line1[2]="WELL, MAYBE NOT SO MUCH NOW."
	my_id.line2[2]="I JUST COULDN'T HELP MYSELF."
	my_id.line1[3]="ONE DAY I'LL SHOW THAT FAT PIG"
	my_id.line2[3]="WHO THE REAL BOSS IS..."
	my_id.messages=3
	}
	}

	if room=rmMallFloor1 {
	if argument0=0 {
	my_id.sprite=sprFacePolice
	objEffector.sprite=sprFacePolice
	my_id.line1[0]="DROP YOUR WEAPON AND GET DOWN"
	my_id.line2[0]="ON THE GROUND! NOW!"
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceCop
	objEffector.sprite=sprFaceCop
	my_id.line1[0]="DON'T SHOOT, I'M A DETECTIVE."
	my_id.line2[0]="HERE'S MY BADGE!"
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFacePolice
	objEffector.sprite=sprFacePolice
	my_id.line1[0]="OH, SORRY SIR!"
	my_id.line2[0]="LOWER YOUR WEAPONS BOYS."
	my_id.line1[1]="WHAT'S THE SITUATION IN THERE?"
	my_id.line2[1]="WE HEARD GUNFIRE..."
	my_id.messages=1
	}
	if argument0=3 {
	my_id.sprite=sprFaceCop
	objEffector.sprite=sprFaceCop
	my_id.line1[0]="YEAH, YOU GO LOOK FOR YOURSELVES."
	my_id.line2[0]="IT'S A BLOODBATH IN THERE..."
	my_id.line1[1]="MAN, SOMETIMES I HATE THIS CITY"
	my_id.line2[1]="..."
	my_id.messages=1
	}
	}

	if room=rmDiner {
	if argument0=0 {
	my_id.sprite=sprFaceWaitress
	objEffector.sprite=sprFaceWaitress
	my_id.line1[0]="LEAVING ALREADY? YOU DON'T LOOK"
	my_id.line2[0]="TOO GOOD, ARE YOU OK?"
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceCop
	objEffector.sprite=sprFaceCop
	my_id.line1[0]="BEEN A STRESSFUL DAY. YOU WOULDN'T"
	my_id.line2[0]="BELIEVE WHAT THEY HAVE ME DOING..."
	my_id.line1[1]="I SHOULD PROBABLY GO HOME AND"
	my_id.line2[1]="GET SOME SLEEP."
	my_id.messages=1
	}
	if argument0=2 {
	my_id.sprite=sprFaceWaitress
	objEffector.sprite=sprFaceWaitress
	my_id.line1[0]="ALRIGHT, YOU HAVE A NICE NIGHT!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceCop
	objEffector.sprite=sprFaceCop
	my_id.line1[0]="YOU TOO, SWEETHEART!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	}


	if room=rmPizzaPlace {
	if argument0=0 {
	my_id.sprite=sprFacePizzaDude
	objEffector.sprite=sprFacePizzaDude
	my_id.line1[0]="HAPPY HALLOWEEN, SIR!"
	my_id.line2[0]="YOU ORDERED THREE PIZZAS, RIGHT?"
	my_id.line1[1]="THAT'LL BE $14.50, SIR. YOUR PIZZAS"
	my_id.line2[1]="ARE ON THE COUNTER TO YOUR LEFT."
	my_id.line1[2]="ENJOY YOUR MEAL, AND WATCH OUT"
	my_id.line2[2]="FOR GHOSTS TONIGHT, OK?"
	my_id.line1[3]="BYE!"
	my_id.line2[3]=""
	my_id.messages=3
	}
	}

	if room=rmCobraApartment1 {
	if argument0=0 {
	my_id.sprite=sprFaceCobraPhone
	objEffector.sprite=sprFaceCobraPhone
	my_id.line1[0]="GOOD DAY! THIS IS ERIC FROM MIAMI"
	my_id.line2[0]="AUTO REPAIRS."
	my_id.line1[1]="I'M CALLING TO TELL YOU THAT WE"
	my_id.line2[1]="HAVE FINISHED SERVICE..."
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="HELLO!? WHO IS THIS?"
	my_id.line2[0]="LET ME TALK TO YOUR BOSS, OK!?"
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceCobraPhone
	objEffector.sprite=sprFaceCobraPhone
	my_id.line1[0]="...SWING ON BY 35th SOUTH WEST"
	my_id.line2[0]="PLACE AND PICK..."
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="HEY! I'M TALKING HERE!"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFaceCobraPhone
	objEffector.sprite=sprFaceCobraPhone
	my_id.line1[0]="...WE GUARANTE YOU THE BEST"
	my_id.line2[0]="SERVICE IN TOWN!"
	my_id.line1[1]="*CLICK*"
	my_id.line2[1]="..."
	my_id.messages=1
	}
	if argument0=5 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="DON'T YOU HANG UP"
	my_id.line2[0]="ON ME, DAMMIT!"
	my_id.line1[1]="SHOW SOME GODDAMN RESPECT!"
	my_id.line2[1]="..."
	my_id.messages=1
	}
	if argument0=6 {
	my_id.sprite=sprFaceForms
	objEffector.sprite=sprFaceForms
	my_id.line1[0]="Thank you for subscribing"
	my_id.line2[0]="to our newsletter!"
	my_id.line1[1]="We appreciate your interest"
	my_id.line2[1]="in our cause."
	my_id.line1[2]="America is a tune. It"
	my_id.line2[2]="must be sung together."
	my_id.line1[3]="-50 blessings"
	my_id.line2[3]=""
	my_id.messages=3
	}
	}

	if room=rmTattoo {
	if argument0=0 {
	my_id.sprite=sprFaceTattooer
	objEffector.sprite=sprFaceTattooer
	my_id.line1[0]="HI THERE! WELCOME!"
	my_id.line2[0]="WHAT CAN I HELP YOU WITH?"
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="I'D LIKE TO GET A TATTOO"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceTattooer
	objEffector.sprite=sprFaceTattooer
	my_id.line1[0]="RIGHT... YOU GOT ANYTHING"
	my_id.line2[0]="PARTICULAR IN MIND?"
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="I WANT OLD DIXIE... RIGHT HERE,"
	my_id.line2[0]="ON MY SHOULDER."
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFaceTattooer
	objEffector.sprite=sprFaceTattooer
	my_id.line1[0]="OK, SURE..."
	my_id.line2[0]="LEMME SEE HERE"
	my_id.line1[1]="RIGHT. HOW DOES NEXT FRIDAY"
	my_id.line2[1]="2 PM SOUND?"
	my_id.messages=1
	}
	if argument0=5 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="FRIDAY? WHAT DO YOU MEAN?"
	my_id.line2[0]="YOU CAN'T DO IT NOW?"
	my_id.line1[1]="IT HAS TO BE TODAY!"
	my_id.line2[1]="TODAY'S A SPECIAL OCCASION."
	my_id.line1[2]="I'M CELEBRATING!"
	my_id.line2[2]=""
	my_id.messages=2
	}
	if argument0=6 {
	my_id.sprite=sprFaceTattooer
	objEffector.sprite=sprFaceTattooer
	my_id.line1[0]="SORRY, BOSS! CAN'T HELP YOU!"
	my_id.line2[0]="WE'RE ALL BOOKED FOR DAYS."
	my_id.messages=0
	}
	if argument0=7 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="OH, IS THAT SO? WHAT KIND OF"
	my_id.line2[0]="BUSINESS ARE YOU RUNNING HERE?"
	my_id.line1[1]="YOU JUST LOST YOURSELF A "
	my_id.line2[1]="CUSTOMER, YOU RUSSIAN ASSHOLE!"
	my_id.messages=1
	}
	if argument0=8 {
	my_id.sprite=sprFaceTattooer
	objEffector.sprite=sprFaceTattooer
	my_id.line1[0]="WHATEVER YOU SAY, BOSS..."
	my_id.line2[0]=""
	my_id.messages=0
	}
	}

	if room=rmPigApartment2 {
	if argument0=2 {
	my_id.sprite=sprFacePoliceScared
	objEffector.sprite=sprFacePoliceScared
	my_id.line1[0]="H-HOLD IT RIGHT THERE, SIR!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFacePigMask
	objEffector.sprite=sprFacePigMask
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFacePoliceScared
	objEffector.sprite=sprFacePoliceScared
	my_id.line1[0]="WE ARE HERE TO ARREST YOU."
	my_id.line2[0]="Y-YOU NEED TO COME WITH US."
	my_id.line1[1]="WE'LL TAKE YOU DOWN TO THE STATION."
	my_id.line2[1]="..."
	my_id.line1[2]="D-DO YOU UNDERSTAND WHAT I'M"
	my_id.line2[2]="SAYING..?"
	my_id.messages=2
	}
	if argument0=5 {
	my_id.sprite=sprFacePigMask
	objEffector.sprite=sprFacePigMask
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=0 {
	my_id.sprite=sprFaceScript
	objEffector.sprite=sprFaceScript
	my_id.line1[0]="THE GIRL SCREAMS AS THE PIG BUTCHER"
	my_id.line2[0]="ENTERS THE INTERROGATION ROOM."
	my_id.line1[1]="THE POLICE NEXT TO HER FALLS OFF HIS"
	my_id.line2[1]="CHAIR HITTING HIS HEAD."
	my_id.line1[2]="SHE TRIES TO GET AWAY, BUT THE"
	my_id.line2[2]="PIG BUTCHER CATCHES HOLD OF HER ARM."
	my_id.line1[3]="HE FORCES HER DOWN TO THE GROUND."
	my_id.line2[3]="SHE SCREAMS AS HE..."
	my_id.messages=3
	}
	if argument0=1 {
	my_id.sprite=sprFacePigPhone
	objEffector.sprite=sprFacePigPhone
	my_id.line1[0]="LOOKS LIKE THE POLICE IS HERE."
	my_id.line2[0]="THE GIRL MUST HAVE TOLD ON YOU."
	my_id.line1[1]="YOU BETTER GO ALONG OBEDIENTLY,"
	my_id.line2[1]="THEY'LL TAKE YOU TO HER..."
	my_id.line1[2]="THAT'S WHAT YOU WANT ISN'T IT?"
	my_id.line2[2]="..."
	my_id.line1[3]="*CLICK*"
	my_id.line2[3]="..."
	my_id.messages=3
	}
	}


	if room=rmPoliceStationFloor1 {
	if argument0=0 {
	my_id.sprite=sprFacePoliceInterrogation
	objEffector.sprite=sprFacePoliceInterrogation
	my_id.line1[0]="WE KNOW WHAT YOU'VE BEEN UP TO..."
	my_id.line2[0]="AND YOU'RE GONNA FRY FOR IT."
	my_id.line1[1]="THE GIRL'S UPSTAIRS GIVING US HER"
	my_id.line2[1]="FULL STATEMENT RIGHT NOW."
	my_id.line1[2]="SOON THEY'LL BE ON THEIR WAY"
	my_id.line2[2]="DOWN HERE FOR YOU."
	my_id.line1[3]="UNTIL THEN YOU'RE STUCK WITH ME."
	my_id.line2[3]="..."
	my_id.messages=3
	}
	if argument0=1 {
	my_id.sprite=sprFacePigSilent
	objEffector.sprite=sprFacePigSilent
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFacePoliceInterrogation
	objEffector.sprite=sprFacePoliceInterrogation
	my_id.line1[0]="I'D LIKE TO ASK WHY YOU DID WHAT"
	my_id.line2[0]="YOU DID, BUT..."
	my_id.line1[1]="YOU DON'T EVEN KNOW YOURSELF."
	my_id.line2[1]="DO YOU?"
	my_id.line1[2]="LOOK AT YOU..."
	my_id.line2[2]="YOU'RE FUCKED..."
	my_id.line1[3]="COMPLETELY FUCKED..."
	my_id.line2[3]="IN THE HEAD..."
	my_id.line1[4]="AREN'T YOU?"
	my_id.line2[4]="..."
	my_id.line1[5]="WHY ELSE WOULD ANYONE BE KILLING"
	my_id.line2[5]="KIDS IN A PIG'S MASK, HUH?"
	my_id.messages=5
	}
	if argument0=3 {
	my_id.sprite=sprFacePigPsycho
	objEffector.sprite=sprFacePigPsycho
	my_id.line1[0]="IT'S"
	my_id.line2[0]="..."
	my_id.line1[1]="THE PHONE"
	my_id.line2[1]="..."
	my_id.line1[2]="YOU SHOULD ANSWER IT"
	my_id.line2[2]="..."
	my_id.messages=2
	}
	if argument0=4 {
	my_id.sprite=sprFacePoliceInterrogation
	objEffector.sprite=sprFacePoliceInterrogation
	my_id.line1[0]="I'LL SAY IT AGAIN..."
	my_id.line2[0]="THERE IS NO PHONE."
	my_id.line1[1]="I DON'T SEE NO PHONE, AND"
	my_id.line2[1]="I DON'T HEAR NO PHONE. OKAY?"
	my_id.line1[2]="IT'S JUST A FIGMENT OF YOUR"
	my_id.line2[2]="IMAGINATION. YOU HEAR ME?"
	my_id.line1[3]="YOU'RE INSANE."
	my_id.line2[3]="A MANIAC."
	my_id.line1[4]="AND SOON ENOUGH, YOU WILL"
	my_id.line2[4]="PAY FOR YOUR CRIMES..."
	my_id.messages=4
	}
	if argument0=5 {
	my_id.sprite=sprFacePigPsycho
	objEffector.sprite=sprFacePigPsycho
	my_id.line1[0]="THE PHONE"
	my_id.line2[0]="..."
	my_id.line1[1]="YOU'RE NOT GONNA ANSWER?"
	my_id.line2[1]="..."
	my_id.messages=1
	}
	if argument0=6 {
	my_id.sprite=sprFacePoliceInterrogation
	objEffector.sprite=sprFacePoliceInterrogation
	my_id.line1[0]="*SIGH*"
	my_id.line2[0]="..."
	my_id.line1[1]="THERE'S JUST NO POINT TALKING"
	my_id.line2[1]="TO YOU IS THERE?"
	my_id.messages=1
	}
	if argument0=7 {
	my_id.sprite=sprFacePigPhone
	objEffector.sprite=sprFacePigPhone
	my_id.line1[0]="YOU KNOW WHAT NEEDS TO BE DONE"
	my_id.line2[0]="..."
	my_id.line1[1]="HE'S NOT EVEN LOOKING..."
	my_id.line2[1]="IT'S LIKE HE WANTS YOU TO KILL HIM."
	my_id.line1[2]="*CLICK*"
	my_id.line2[2]="..."
	my_id.messages=2
	}
	}

	if room=rmPoliceStationFloor2Part2 {
	if argument0=0 {
	my_id.sprite=sprFaceGirlAngry
	objEffector.sprite=sprFaceGirlAngry
	my_id.line1[0]="I'M NOT YOUR FUCKING"
	my_id.line2[0]="GIRLFRIEND!"
	my_id.messages=0
	}
	}

	if room=rmPoliceStationFloor2MovieSet{
	if argument0=0 {
	my_id.sprite=sprFaceDirector
	objEffector.sprite=sprFaceDirector
	my_id.line1[0]="CUT! NO NEED FOR A RETAKE!"
	my_id.line2[0]="THAT WAS PERFECT!"
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceDirector
	objEffector.sprite=sprFaceDirector
	my_id.line1[0]="GOOD JOB GUYS..."
	my_id.line2[0]="SPECTACULAR PERFORMANCES."
	my_id.line1[1]="ONLY GOT A FEW MORE SHOTS TO SHOOT"
	my_id.line2[1]="BEFORE WE CAN MOVE ON TO EDITING."
	my_id.line1[2]="WHY DON'T YOU GO GRAB SOMETHING TO EAT"
	my_id.line2[2]="WHILE WE PUT UP THE NEW SET PIECES."
	my_id.line1[3]="JUST MAKE SURE YOU'RE BACK IN THIRTY"
	my_id.line2[3]="MINUTES, OK? TIME IS MONEY..."
	my_id.messages=3
	}

	if argument0=2 {
	my_id.sprite=sprFaceGirl
	objEffector.sprite=sprFaceGirl
	my_id.line1[0]="YOU HEARD HIM, MARTIN!"
	my_id.line2[0]="TIME TO GET UP!"
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="MARTIN?"
	my_id.line2[2]="..."
	my_id.messages=2
	}

	if argument0=3 {
	my_id.sprite=sprFaceDirector
	objEffector.sprite=sprFaceDirector
	my_id.line1[0]="MARTIN, ARE YOU OK?"
	my_id.line2[0]="SAY SOMETHING..."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="MARTIN?"
	my_id.line2[2]=""
	my_id.messages=2
	}
	}

	if room=rmSubway1 {
	if argument0=0 {
	my_id.sprite=sprFaceHobo
	objEffector.sprite=sprFaceHobo
	my_id.line1[0]="HEY MISTER!"
	my_id.line2[0]="SPARE SOME CHANGE?"
	my_id.messages=0
	}



	if argument0=1 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=sprFaceWriter
	my_id.line1[0]="ERH... SURE."
	my_id.line2[0]="HERE YOU GO."
	my_id.messages=0
	}

	if argument0=2 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=sprFaceRichard
	my_id.line1[0]="DO I LOOK LIKE I WANT"
	my_id.line2[0]="YOUR DIRTY MONEY?"
	my_id.messages=0
	}

	if argument0=3 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=sprFaceWriter
	my_id.line1[0]="EXCUSE ME?"
	my_id.line2[0]="..."
	my_id.messages=0
	}

	if argument0=4 {
	my_id.sprite=sprFaceWriterWife
	objEffector.sprite=sprFaceWriterWife
	my_id.line1[0]="WE'VE BARELY GOT ENOUGH"
	my_id.line2[0]="MONEY FOR RENT."
	my_id.line1[1]="MAYBE YOU SHOULD STOP TRYING"
	my_id.line2[1]="TO BE A WRITER."
	my_id.line1[2]="WE'VE GOT KIDS TO FEED."
	my_id.line2[2]="YOU NEED A REAL JOB, DEAR."
	my_id.line1[3]="THIS JUST ISN'T WORKING."
	my_id.line2[3]="..."
	my_id.messages=3
	}

	if argument0=5 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=sprFaceWriter
	my_id.line1[0]="SHARON, WHAT... "
	my_id.line2[0]="WHAT'S GOING ON HERE?"
	my_id.messages=0
	}

	if argument0=6 {
	my_id.sprite=sprFaceWriterWife
	objEffector.sprite=sprFaceWriterWife
	my_id.line1[0]="I'LL LEAVE YOU."
	my_id.line2[0]="I'LL TAKE THE KIDS AND LEAVE."
	my_id.messages=0
	}

	if argument0=7 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=sprFaceWriter
	my_id.line1[0]="YOU WON'T HAVE TO DO THAT."
	my_id.line2[0]="THIS BOOK..."
	my_id.line1[1]="IT'S GONNA BE GOOD."
	my_id.line2[1]="I PROMISE."
	my_id.line1[2]="I JUST NEED SOME MORE TIME, OK?"
	my_id.line2[2]=""
	my_id.messages=2
	}

	if argument0=8 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=sprFaceRichard
	my_id.line1[0]="TIME IS THE ONE THING YOU DON'T HAVE."
	my_id.line2[0]=""
	my_id.line1[1]="MAYBE YOU SHOULD RECONSIDER YOUR"
	my_id.line2[1]="PRIORITIES?"
	my_id.messages=1
	}

	if argument0=9 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=sprFaceWriter
	my_id.line1[0]="WHAT ARE YOU SAYING?"
	my_id.line2[0]="..."
	my_id.messages=0
	}

	if argument0=10 {
	my_id.sprite=sprFaceHobo
	objEffector.sprite=sprFaceHobo
	my_id.line1[0]="I SAID I DON'T WANT YOUR"
	my_id.line2[0]="STINKING MONEY!"
	my_id.messages=0
	}
	}



}
