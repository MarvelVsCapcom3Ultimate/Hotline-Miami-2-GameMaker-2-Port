function scrGetMessage1(argument0) {
	if room=rmLSDGate {
	if argument0=0 {
	my_id.sprite=sprFaceSon
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="GOTTA GET A GRIP"
	my_id.line2[0]="..."
	my_id.line1[1]="GAAAAARGH..."
	my_id.line2[1]=""
	my_id.messages=1
	}
	}

	if room=rmNickeStore {
	if argument0=0 {
	my_id.sprite=sprFaceNickeStore
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="SORRY TO HEAR ABOUT THAT."
	my_id.line2[0]="THINGS LIKE THAT ARE NEVER EASY."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="WELL, YEAH."
	my_id.line2[2]="..."
	my_id.line1[3]="YOU KNOW WHAT THEY SAY."
	my_id.line2[3]="TIME HEALS ALL WOUNDS"
	my_id.line1[4]="..."
	my_id.line2[4]=""
	my_id.line1[5]="RIGHT."
	my_id.line2[5]=""
	my_id.line1[6]="SO, YOU REMEMBER THAT PHOTO"
	my_id.line2[6]="WE TALKED ABOUT, FROM HAWAII?"
	my_id.line1[7]="DID YOU EVER GET AROUND TO"
	my_id.line2[7]="SENDING ME A COPY OF IT?"
	my_id.line1[8]="..."
	my_id.line2[8]=""
	my_id.line1[9]="RIGHT, WELL WHENEVER YOU GET"
	my_id.line2[9]="A CHANCE, MAN."
	my_id.line1[10]="LOOK, THERE SEEMS TO BE SOMETHING"
	my_id.line2[10]="GOING ON OUTSIDE MY SHOP."
	my_id.line1[11]="I'M GONNA GO HAVE LOOK, OKAY?"
	my_id.line2[11]="..."
	my_id.line1[12]="ALRIGHT TALK TO YOU LATER."
	my_id.line2[12]="BYE!"
	my_id.messages=12
	}
	}

	if room=rmPowerPlantOutro {
	if argument0=0 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="MY NAME IS BEN SMITH, MY CAR'S"
	my_id.line2[0]="BROKEN DOWN ON ME..."
	my_id.line1[1]="I NEED... I..."
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprFaceWalkieTalkie
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="CAN YOU REPEAT THAT?"
	my_id.line2[0]="OVER!"
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="MY NAME IS..."
	my_id.line2[0]=""
	my_id.line1[1]="..."
	my_id.line2[1]="FUCK IT!"
	my_id.line1[2]="LOOK, WE NEED A CASEVAC HERE!"
	my_id.line2[2]="I'M AT 19.42�N, 155.28�W!"
	my_id.line1[3]="AND STEP ON IT!"
	my_id.line2[3]="HE'S BLEEDING OUT."
	my_id.messages=3
	}
	if argument0=3 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="HANG IN THERE, BUDDY."
	my_id.line2[0]="THEY'LL BE HERE REAL SOON."
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="NO NEED TO THANK ME, KID."
	my_id.line2[0]="IT'S ON THE HOUSE."
	my_id.line1[1]="YOU WOULD HAVE DONE THE SAME"
	my_id.line2[1]="FOR ME, RIGHT?"
	my_id.line1[2]="..."
	my_id.line2[2]=""
	my_id.line1[3]="I THINK I HEAR THE CHOPPER"
	my_id.line2[3]="COMING NOW..."
	my_id.line1[4]="MAYBE YOU SHOULD TAKE THIS, SO YOU"
	my_id.line2[4]="DON'T FORGET WHO SAVED YOUR ASS."
	my_id.messages=4
	}
	}

	if room=rmPowerPlantBuilding3 {
	if argument0=0 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="LOOKS LIKE THEIR BOSS"
	my_id.line2[0]="TOTALLY LOST IT..."
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="NO POINT GOING IN THERE"
	my_id.line2[0]="NOW, IS THERE?"
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="GUYS, I THINK WE BETTER GET"
	my_id.line2[0]="OUT OF HERE..."
	my_id.messages=0
	}
	}

	if room=rmCamp3Day {
	if argument0=0 {
	my_id.sprite=sprFaceGeneralDown
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="BLABLABLA"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="BLABLABLA"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	}

	if room=rmCamp3Night {
	if argument0=0 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="SO, TOMORROW'S OUR LAST MISSION"
	my_id.line2[0]="HUH...?"
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YEAH. IF THEY CAN'T FIND ANOTHER"
	my_id.line2[0]="BULLSHIT REASON TO GET US KILLED."
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="FOR ONCE I AGREE WITH YOU, BARNES."
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WHY ARE YOU ALWAYS PICKING ON ME?"
	my_id.line2[0]="WE'RE IN THIS SHIT TOGETHER, RIGHT?"
	my_id.line1[1]="AS FOR TOMORROW. I DON'T GET IT."
	my_id.line2[1]="I REALLY DON'T."
	my_id.line1[2]="HOW THE HELL ARE THE FOUR OF US"
	my_id.line2[2]="GONNA CAPTURE A POWER PLANT, HUH?"
	my_id.line1[3]="THEY SHOULD BE SENDING IN A WHOLE"
	my_id.line2[3]="PLATOON..."
	my_id.messages=3
	}
	if argument0=4 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THE PLACE MIGHT BE BOOBY TRAPPED."
	my_id.line2[0]="TOO RISKY FOR A WHOLE PLATOON."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="I GUESS WE'RE MORE..."
	my_id.line2[2]="EXPENDABLE."
	my_id.messages=2
	}
	if argument0=5 {
	my_id.sprite=sprFaceGeneralPanther
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ANIMALS!"
	my_id.line2[0]="..."
	my_id.line1[1]="THAT'S ALL WE ARE!"
	my_id.line2[1]="A BUNCH OF GODDAMN ANIMALS!"
	my_id.line1[2]="THEY'RE SENDING US OUT TO SLAUGHTER"
	my_id.line2[2]="OR BE SLAUGHTERED..."
	my_id.line1[3]="AND HERE WE SIT UNTIL THEY TELL US"
	my_id.line2[3]="WHAT TO DO, AND HOW TO DO IT!"
	my_id.line1[4]="NO WILL OF OUR OWN. JUST MINDLESS"
	my_id.line2[4]="OBEDIENCE!"
	my_id.line1[5]="WE DON'T EVEN KNOW WHY WE'RE"
	my_id.line2[5]="FIGHTING NOW, DO WE?"
	my_id.messages=5
	}
	if argument0=6 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="SIR, ARE YOU OKAY?"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=7 {
	my_id.sprite=sprFaceGeneralBlood
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I..."
	my_id.line2[0]=""
	my_id.line1[1]="I MAY HAVE HAD A BIT TOO MUCH"
	my_id.line2[1]="TO DRINK..."
	my_id.line1[2]="I'M FEELING A LITTLE BIT TIRED."
	my_id.line2[2]="MAYBE I BETTER GO TO BED."
	my_id.messages=2
	}
	if argument0=8 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THAT MIGHT BE A GOOD IDEA, SIR"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=9 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I WONDER WHAT KIND OF FUCKED UP"
	my_id.line2[0]="SHIT HE'S BEEN DRINKING."
	my_id.messages=0
	}
	}

	if room=rmFansLevel5Floor1 {
	if argument0=0 {
	my_id.sprite=sprMaskZebra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="CAN YOU OPEN THE DOOR ALREADY?"
	my_id.line2[0]="IT'S GETTING PRETTY LATE..."
	my_id.line1[1]="THEY MIGHT BE HEADING OUT SOON."
	my_id.line2[1]="..."
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="IT WAS YOUR IDEA TO STAKE THE PLACE"
	my_id.line2[0]="OUT FOR TWO HOURS."
	my_id.line1[1]="I'M WORKING AS FAST AS I CAN HERE."
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=2 {
	my_id.sprite=sprMaskZebra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WELL, WE COULDN'T JUST BARGE IN."
	my_id.line2[0]="YOU GOTTA HAVE A PLAN, YOU KNOW."
	my_id.line1[1]="AT LEAST NOW WE KNOW WHERE"
	my_id.line2[1]="THEY ARE."
	my_id.messages=1
	}
	if argument0=3 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.line1[1]="JUST FUCKING OPEN THIS THING,"
	my_id.line2[1]="WILL YA?"
	my_id.messages=1
	}
	if argument0=4 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="MAYBE YOU WOULD LIKE TO TAKE"
	my_id.line2[0]="OVER HERE THEN?"
	my_id.line1[1]="I'M SURE YOU'D GET IT OPEN IN NO TIME."
	my_id.line2[1]="..."
	my_id.messages=1
	}
	if argument0=5 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=6 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YEAH, I DIDN'T THINK SO."
	my_id.line2[0]="..."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="I THINK I GOT IT NOW..."
	my_id.line2[2]=""
	my_id.messages=2
	}
	if argument0=7 {
	my_id.sprite=sprMaskSwan1
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ALRIGHT, SEE YOU GUYS ON THE ROOF!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=8 {
	my_id.sprite=sprMaskZebra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="DON'T FORGET TO STAY IN TOUCH WITH"
	my_id.line2[0]="THE WALKIE TALKIES!"
	my_id.messages=0
	}
	if argument0=9 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ABOUT THE ROOF"
	my_id.line2[0]="..."
	my_id.line1[1]="YOU SURE WE'LL BE ABLE TO JUMP ACROSS"
	my_id.line2[1]="TO THE OTHER BUILDING?"
	my_id.line1[2]="IT LOOKED A BIT FAR TO ME."
	my_id.line2[2]=""
	my_id.messages=2
	}
	if argument0=10 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="IT'S NOT THAT FAR. WELL, AT LEAST "
	my_id.line2[0]="NOT FOR THE REST OF US."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="YOU MAY HAVE SOME DIFFICULTIES"
	my_id.line2[2]="WITH IT THOUGH, BIG GUY."
	my_id.messages=2
	}
	if argument0=11 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YEAH. FUCK YOU TOO, MAN"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	}

	if room=rmFansLevel5Roof {
	if argument0=0 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ALRIGHT, WE'RE ON THE ROOF NOW!"
	my_id.line2[0]="HOW ARE THINGS GOING FOR YOU, GUYS?"
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="HELLO?"
	my_id.line2[2]="..."
	my_id.line1[3]="IS ANYONE THERE?"
	my_id.line2[3]="..."
	my_id.line1[4]="GUYS?"
	my_id.line2[4]="..."
	my_id.line1[5]="..."
	my_id.line2[5]=""
	my_id.messages=5
	}
	if argument0=1 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THEY'RE NOT ANSWERING"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprMaskSwan1
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="MAYBE YOUR WALKIE TALKIE'S BUSTED?"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I DON'T THINK SO..."
	my_id.line2[0]="IT SEEMS TO BE WORKING FINE."
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprMaskSwan1
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="SHOULD WE GO BACK AND CHECK ON THEM?"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=5 {
	my_id.sprite=sprMaskSwan2
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="MAYBE WE SHOULD"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=6 {
	my_id.sprite=sprMaskSwan1
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ASH"
	my_id.line2[0]="..."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=7 {
	my_id.sprite=sprMaskSwan1
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WHAT THE FUCK ARE YOU"
	my_id.line2[0]="WAITING FO-"
	my_id.messages=0
	}
	}

	if room=rmFansLevel5Floor2 {
	if argument0=0 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I'M DONE HERE."
	my_id.line2[0]="HEADING UPSTAIRS."
	my_id.messages=0
	}
	}

	if room=rmFansLevel5Floor3 {
	if argument0=0 {
	my_id.sprite=sprMaskZebra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.line1[1]="I THINK I'M DONE HERE."
	my_id.line2[1]="HOW ARE YOU GUYS DOING?"
	my_id.line1[2]="I'M MOVING UP TO THE NEXT FLOOR."
	my_id.line2[2]="SEE YOU ON THE ROOF!"
	my_id.messages=2
	}
	}

	if room=rmFansLevel5Floor4 {
	if argument0=0 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ALL CLEAR ON MY END, I THINK."
	my_id.line2[0]="WAIT... WHAT WAS THAT?"
	my_id.line1[1]="I THINK I JUST HEARD SOMETHING"
	my_id.line2[1]="..."
	my_id.messages=1
	}
	}

	if room=rmBikerBar {
	if argument0=0 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceBiker
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceBiker
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=5 {
	my_id.sprite=sprFaceBiker
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=6 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=7 {
	my_id.sprite=sprFaceBiker
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=8 {
	my_id.sprite=sprFaceWriter
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=9 {
	my_id.sprite=sprFaceBiker
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="Blablabalabal"
	my_id.line2[0]=""
	my_id.messages=0
	}
	}

	if room=rmBankVault {
	if argument0=0 {
	my_id.sprite=sprFaceSonRobber
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.line1[1]="FATHER?"
	my_id.line2[1]="..."
	my_id.line1[2]="WHAT... WHAT ARE YOU DOING HERE?"
	my_id.line2[2]="..."
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprFaceFather
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.line1[1]="I'M NOT HERE"
	my_id.line2[1]="..."
	my_id.line1[2]="NOT ANYMORE"
	my_id.line2[2]="..."
	my_id.line1[2]="YOU KNOW THAT."
	my_id.line2[2]=""
	my_id.messages=2
	}
	if argument0=2 {
	my_id.sprite=sprFaceSonRobber
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.line1[1]="YES, I KNOW."
	my_id.line2[1]=""
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceFather
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.line1[1]="THEN WHY ARE YOU HERE?"
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=4 {
	my_id.sprite=sprFaceSonRobber
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I..."
	my_id.line2[0]=""
	my_id.line1[1]="I DON'T KNOW."
	my_id.line2[1]="..."
	my_id.line1[2]="I WANT TO MAKE YOU PROUD"
	my_id.line2[2]="..."
	my_id.messages=2
	}
	if argument0=5 {
	my_id.sprite=sprFaceFather
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="SUCH THINGS DON'T MATTER"
	my_id.line2[0]="..."
	my_id.line1[1]="I CAN SEE YOU HAVEN'T CHANGED"
	my_id.line2[1]="..."
	my_id.line1[2]="YOU'RE JUST LIKE ME. YOU WON'T GET"
	my_id.line2[2]="IT UNTIL IT'S ALREADY TOO LATE."
	my_id.messages=2
	}
	if argument0=6 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YOUR FATHER IS RIGHT."
	my_id.line2[0]="YOU DON'T GET IT, DO YOU?"
	my_id.line1[1]="NOT THAT IT MATTERS ANYMORE."
	my_id.line2[1]="IT'S ALL THE SAME IN THE END."
	my_id.line1[2]="AND THERE'S NOTHING YOU CAN"
	my_id.line2[2]="DO ABOUT THAT. IS THERE?"
	my_id.messages=2
	}
	if argument0=7 {
	my_id.sprite=sprFaceSonRobber
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="BUT, FATHER..."
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=8 {
	my_id.sprite=sprFaceRichard
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="HE ALREADY TOLD YOU"
	my_id.line2[0]="..."
	my_id.line1[1]="HE'S NOT HERE ANYMORE."
	my_id.line2[1]=""
	my_id.line1[2]="IN FACT, NEITHER ARE YOU."
	my_id.line2[2]=""
	my_id.messages=2
	}
	}

	if room=rmSonHideout3 {
	if argument0=0 {
	my_id.sprite=sprFaceSon
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ALRIGHT BOYS! THIS IS IT!"
	my_id.line2[0]=""
	my_id.line1[1]="TONIGHT WE'LL BE RICH!"
	my_id.line2[1]="WE CAN DO ANYTHING WE WANT!"
	my_id.line1[2]="THE COLOMBIANS WILL HAVE NOTHING"
	my_id.line2[2]="LEFT! THEY'LL LEARN TO FEAR US!"
	my_id.line1[3]="A TOAST TO OUR NEW LIVES!"
	my_id.line2[3]="AS KINGS OF THE STREET!"
	my_id.messages=3
	}
	}

	if room=rm50BlessingsCobra {
	if argument0=0 {
	my_id.sprite=sprFace50ManagerGlad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WHY HELLO THERE. WE'RE JUST ABOUT"
	my_id.line2[0]="TO CLOSE UP HERE..."
	my_id.line1[1]="IS THERE ANYTHING I CAN"
	my_id.line2[1]="HELP YOU WITH?"
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="I'M A MEMBER"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFace50ManagerGlad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="IS THAT SO? I'M GLAD TO HEAR THAT!"
	my_id.line2[0]="THANK YOU FOR YOUR SUPPORT."
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="LOOK, I'VE GOT THIS PLAN. I KNOW IT"
	my_id.line2[0]="SOUNDS A LITTLE CRAZY..."
	my_id.line1[1]="BUT JUST THINK ABOUT IT FOR A"
	my_id.line2[1]="LITTLE WHILE, OK?"
	my_id.line1[2]="I THINK I MIGHT BE ON TO"
	my_id.line2[2]="SOMETHING BIG HERE."
	my_id.messages=2
	}
	if argument0=4 {
	my_id.sprite=sprFace50ManagerGlad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ALRIGHT! LET'S HEAR THIS PLAN"
	my_id.line2[0]="OF YOURS."
	my_id.line1[1]="JUST MAKE IT QUICK, I REALLY "
	my_id.line2[1]="NEED TO BE ON MY WAY."
	my_id.messages=1
	}
	if argument0=5 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ALRIGHT, SO I'VE BEEN GETTING"
	my_id.line2[0]="THESE STRANGE PHONE CALLS..."
	my_id.messages=0
	}
	if argument0=6 {
	my_id.sprite=sprFace50Manager
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="STRANGE PHONE CALLS? I WOULDN'T"
	my_id.line2[0]="KNOW ANYTHING ABOUT THAT."
	my_id.messages=0
	}
	if argument0=7 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="LOOK, JUST HEAR ME OUT, OK?"
	my_id.line2[0]="..."
	my_id.line1[1]="LIKE I WAS SAYING, THESE PHONE"
	my_id.line2[1]="CALLS ARE TELLING ME TO DO STUFF."
	my_id.line1[2]="THEY SOUND LIKE THEY'RE SOME KIND"
	my_id.line2[2]="OF MISPLACED CALLS, BUT..."
	my_id.line1[3]="THEY'RE NOT. AND IF YOU DON'T DO"
	my_id.line2[3]="WHAT THEY SAY..."
	my_id.line1[4]="WELL, LET'S SAY YOU DON'T WANT TO"
	my_id.line2[4]="DISOBEY THEM..."
	my_id.line1[5]="THEY DON'T FUCK AROUND IF YOU"
	my_id.line2[5]="KNOW WHAT I MEAN."
	my_id.messages=5
	}
	if argument0=8 {
	my_id.sprite=sprFace50Manager
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I SEE. AND WHAT DO YOU THINK THIS"
	my_id.line2[0]="HAS TO DO WITH OUR ORGANIZATION?"
	my_id.messages=0
	}
	if argument0=9 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I DUNNO. I WAS THINKING... WHAT IF WE"
	my_id.line2[0]="COPY THEIR OPERATION, EXCEPT..."
	my_id.line1[1]="LIKE WE GO AFTER THE RUSSIANS, FREE"
	my_id.line2[1]="AMERICA OF OUR OPRESSORS Y'KNOW!"
	my_id.line1[2]="I MEAN, YOU HAVE ALL THESE MEMBERS"
	my_id.line2[2]="AND ALL THE RESOURCES."
	my_id.line1[3]="MANY OF US HAVE MILITARY EXPERIENCE,"
	my_id.line2[3]="WE'D WIPE 'EM OUT!"
	my_id.line1[4]="WE COULD START A CIVIL MOVEMENT!"
	my_id.line2[4]="FREE OURSELVES!"
	my_id.messages=4
	}
	if argument0=10 {
	my_id.sprite=sprFace50Manager
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I'M NOT SURE I FOLLOW. WE'RE A"
	my_id.line2[0]="PEACEFUL ORGANIZATION..."
	my_id.line1[1]="WE'D NEVER FORCE ANYONE TO DO"
	my_id.line2[1]="SOMETHING THEY DON'T WANT TO."
	my_id.line1[2]="I'M NOT SURE WHAT YOU'RE"
	my_id.line2[2]="ACCUSING US OF."
	my_id.messages=2
	}
	if argument0=11 {
	my_id.sprite=sprFaceCobraHappy
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="OH... I SEE NOW..."
	my_id.line2[0]="YOU'RE THE ONES..."
	my_id.line1[1]="HA! I CAN'T BELIEVE I DIDN'T FIGURE"
	my_id.line2[1]="IT OUT SOONER!"
	my_id.line1[2]="MY GOD! AND HERE I WAS THINKING"
	my_id.line2[2]="I HAD THIS GREAT... OH MAN!"
	my_id.messages=2
	}
	if argument0=12 {
	my_id.sprite=sprFace50Manager
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="LOOK HERE, SIR. WE'RE CLOSED, OK?"
	my_id.line2[0]="..."
	my_id.line1[1]="IF YOU DON'T MIND I WOULD REALLY"
	my_id.line2[1]="LIKE FOR YOU TO LEAVE NOW."
	my_id.messages=1
	}
	if argument0=13 {
	my_id.sprite=sprFaceCobraHappy
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="CAN'T TALK ABOUT IT HERE, EH?"
	my_id.line2[0]="GOTCHA!"
	my_id.line1[1]="DON'T WORRY I'LL KEEP YOUR SECRET SAFE!"
	my_id.line2[1]="YOU CAN COUNT ON ME, BROTHER!"
	my_id.line1[2]="I'LL JUST GO NOW, I HAVE SOMETHING"
	my_id.line2[2]="IMPORTANT TO DO..."
	my_id.line1[3]="IF YOU KNOW WHAT I'M SAYING. HEH!"
	my_id.line2[3]="..."
	my_id.messages=3
	}
	}

	if room=rmCobraApartment2 {
	if argument0=0 {
	my_id.sprite=sprFaceCobraPhone
	objEffector.sprite=sprFaceCobraPhone
	my_id.line1[0]="THIS IS MARY FROM THE DAYCARE"
	my_id.line2[0]="CENTER ON 6TH AND 147TH."
	my_id.line1[1]="WE'RE HAVING A PARENT TEACHER"
	my_id.line2[1]="MEETING TONIGHT AT SEVEN."
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="6TH AND 147TH, GOT IT!"
	my_id.line2[0]="I'LL BE THERE AT SEVEN!"
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceCobraPhone
	objEffector.sprite=sprFaceCobraPhone
	my_id.line1[0]="...DISCRETE."
	my_id.line2[0]="*click*"
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceCobra
	objEffector.sprite=sprFaceCobra
	my_id.line1[0]="HELLO?"
	my_id.line2[0]="..."
	my_id.line1[1]="WHERE'D YOU GO?"
	my_id.line2[1]="..."
	my_id.line1[1]="HRMPH!"
	my_id.line2[1]="..."
	my_id.messages=1
	}
	}

	if room=rmSwanApartment {
	if argument0=0 {
	my_id.sprite=sprFaceSwan
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WHO IS IT?"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceCop
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="IT'S THE POLICE."
	my_id.line2[0]="OPEN THE DOOR."
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceSwan
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="JUST A SECOND, I GOTTA PUT ON"
	my_id.line2[0]="SOME CLOTHES, OK?"
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceSwan
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="HOW DID YOU GET IN HERE?"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFaceCop
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THE DOOR WASN'T LOCKED."
	my_id.line2[0]="I LET MYSELF IN. I HOPE YOU DON'T MIND."
	my_id.messages=0
	}
	if argument0=5 {
	my_id.sprite=sprFaceSwan
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="..."
	my_id.line2[0]=""
	my_id.line1[1]="WELL, WHAT DO YOU WANT?"
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=6 {
	my_id.sprite=sprFaceCop
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I'M LOOKING FOR AN 'ASH DAVIS'. THIS"
	my_id.line2[0]="IS LISTED AS HIS LAST KNOWN ADDRESS."
	my_id.messages=0
	}
	if argument0=7 {
	my_id.sprite=sprFaceSwan
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WELL, AS YOU CAN SEE, HE'S NOT HERE."
	my_id.line2[0]="I DON'T KNOW WHERE HE IS."
	my_id.line1[1]="HE DOESN'T LIVE HERE ANYMORE."
	my_id.line2[1]="..."
	my_id.line1[2]="WAS THERE ANYTHING ELSE?"
	my_id.line2[2]=""
	my_id.messages=2
	}
	if argument0=8 {
	my_id.sprite=sprFaceCop
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WILL YOU TELL HIM TO CONTACT"
	my_id.line2[0]="MIAMI PD NEXT TIME YOU SEE HIM?"
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="YOU'RE HIS SISTER, AREN'T YOU?"
	my_id.line2[2]="I CAN SEE YOU GOT THE GOOD GENES."
	my_id.line1[3]="YOU'RE VERY PRETTY."
	my_id.line2[3]=""
	my_id.messages=3
	}
	if argument0=9 {
	my_id.sprite=sprFaceSwan
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="IF THERE WAS NOTHING ELSE, I WOULD"
	my_id.line2[0]="LIKE FOR YOU TO LEAVE."
	my_id.messages=0
	}
	}

	if room=rmSonHideout2 {
	if argument0=0 {
	my_id.sprite=sprFaceHenchman
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YOU WANTED TO SEE ME, BOSS?"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceSonAngry
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YEAH, WE'VE GOT THINGS TO DO"
	my_id.line2[0]="TONIGHT."
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceHenchman
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="LIKE WHAT?"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceSonAngry
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YOU KNOW THE STRIP CLUB ON 51ST?"
	my_id.line2[0]="IT'S OPENING UP TOMORROW."
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFaceHenchman
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="SO?"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=5 {
	my_id.sprite=sprFaceSonAngry
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THE COLOMBIANS. THEY OWN THE PLACE."
	my_id.line2[0]="..."
	my_id.line1[1]="THEY'RE HAVING AN OPENING PARTY"
	my_id.line2[1]="TONIGHT. VIPS ONLY."
	my_id.messages=1
	}
	if argument0=6 {
	my_id.sprite=sprFaceHenchman
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="HOW'D YOU FIND OUT?"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=7 {
	my_id.sprite=sprFaceSonAngry
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="HOW DO YOU THINK?"
	my_id.line2[0]="THEY INVITED ME."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="BRING YOUR GUNS. WE'RE GONNA MAKE"
	my_id.line2[2]="SURE THEY HAVE A FUN PARTY."
	my_id.messages=2
	}
	if argument0=8 {
	my_id.sprite=sprFaceHenchman
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YOU WANT TO START A WAR WITH THE"
	my_id.line2[0]="COLOMBIANS?"
	my_id.line1[1]="IS THAT REALLY A GOOD IDEA? THEY'VE GOT"
	my_id.line2[1]="A LOT MORE PEOPLE THAN WE DO."
	my_id.messages=1
	}
	if argument0=9 {
	my_id.sprite=sprFaceSon
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="AFTER MY FATHER DIED, THEY WENT IN AND"
	my_id.line2[0]="STOLE OUR TERRITORY, OUR BUSINESS."
	my_id.line1[1]="YOU THINK I'M JUST GONNA LET"
	my_id.line2[1]="THAT SLIDE?"
	my_id.messages=1
	}
	if argument0=10 {
	my_id.sprite=sprFaceHenchman
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="IS THIS REALLY A GOOD TIME FOR IT?"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=11 {
	my_id.sprite=sprFaceSon
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THERE'S NOT GOING TO BE A BETTER TIME."
	my_id.line2[0]="WHILE WE WAIT, THEY KEEP EXPANDING."
	my_id.line1[1]="NOW, WHO'S THE BOSS HERE? YOU OR ME?"
	my_id.line2[1]="YOU GOT ANY MORE OBJECTIONS?"
	my_id.messages=1
	}
	if argument0=12 {
	my_id.sprite=sprFaceHenchman
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YOU'RE THE BOSS"
	my_id.line2[0]="..."
	my_id.line1[1]="I'LL DO WHATEVER YOU TELL ME TO."
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=13 {
	my_id.sprite=sprFaceSon
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="ALRIGHT THEN. LET'S GO."
	my_id.line2[0]=""
	my_id.messages=0
	}
	}

	if room=rmFansHeadQuarters3 {
	if argument0=0 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="DID YOU GUYS CATCH THE NEWS ON"
	my_id.line2[0]="CHANNEL 6 LAST NIGHT?"
	my_id.line1[1]="LOOKS LIKE WE'RE FAMOUS NOW."
	my_id.line2[1]="..."
	my_id.messages=1
	}
	if argument0=1 {
	my_id.sprite=sprMaskZebra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YEAH, LOOKS LIKE WE GOT OUR FIVE"
	my_id.line2[0]="MINUTES OF FAME."
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I'D SAY IT WAS MORE LIKE TWO."
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprMaskSwan1
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="DAMN, I DIDN'T CATCH IT."
	my_id.line2[0]="WHAT DID THEY SAY?"
	my_id.line1[1]="DO YOU THINK YOU CAN CALL THE"
	my_id.line2[1]="NEWS STATION AND ASK FOR A COPY?"
	my_id.line1[2]="I MEAN, I'D PAY TOP BUCKS SEE IT!"
	my_id.line2[2]=""
	my_id.messages=2
	}
	if argument0=4 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WHY DON'T YOU CALL THE POLICE AND"
	my_id.line2[0]="TURN YOURSELF IN WHILE YOU'RE AT IT?"
	my_id.messages=0
	}
	if argument0=5 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YEAH, THAT PROBABLY WOULDN'T BE A"
	my_id.line2[0]="GOOD IDEA..."
	my_id.line1[1]="I'M SURE THEY'LL RUN ANOTHER STORY"
	my_id.line2[1]="ON US SOONER OR LATER ANYWAY."
	my_id.messages=1
	}
	if argument0=6 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I'M NOT SO SURE ABOUT THAT. WE'D HAVE"
	my_id.line2[0]="TO OFF MORE PEOPLE FIRST, Y'KNOW."
	my_id.messages=0
	}
	if argument0=7 {
	my_id.sprite=sprMaskZebra
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="HE'S RIGHT. NOT SURE WHAT TO DO"
	my_id.line2[0]="ABOUT THAT."
	my_id.line1[1]="WE CAN'T JUST GO OUT AND KILL RANDOM"
	my_id.line2[1]="PEOPLE NOW, CAN WE?"
	my_id.messages=1
	}
	if argument0=8 {
	my_id.sprite=sprMaskSwan1
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I MIGHT HAVE AN IDEA"
	my_id.line2[0]="..."
	my_id.line1[1]="I BOUGHT SOME WEED FROM A COUPLE OF"
	my_id.line2[1]="CREEPS ON NW 110TH A FEW DAYS AGO. "
	my_id.line1[2]="IT LOOKED THEY HAD THEIR STASH IN A"
	my_id.line2[2]="STORAGE SHED CLOSE BY."
	my_id.messages=2
	}
	if argument0=9 {
	my_id.sprite=sprMaskTiger
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YOU WANT US TO GO TREASURE HUNTING"
	my_id.line2[0]="FOR MORE DRUGS, HUH?"
	my_id.messages=0
	}
	if argument0=10 {
	my_id.sprite=sprMaskSwan1
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WELL, THERE MIGHT BE MORE ASSHOLES"
	my_id.line2[0]="THERE. I DON'T KNOW."
	my_id.line1[1]="YOU GOT ANYTHING BETTER TO DO?"
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=11 {
	my_id.sprite=sprMaskBear
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I WOULDN'T MIND GOING FOR A RIDE."
	my_id.line2[0]="LET'S CHECK IT OUT, GUYS!"
	my_id.line1[1]="WE CAN ALWAYS GRAB SOME PIZZA"
	my_id.line2[1]="IF WE DON'T FIND ANYTHING."
	my_id.messages=1
	}
	}

	if room=rmHotelAftermath {
	if argument0=0 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WE'RE GOING HOME AFTER THIS?"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THAT'S WHAT THE COLONEL SAID."
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I GUESS THAT'S A GOOD CAUSE"
	my_id.line2[0]="FOR CELEBRATION."
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="DAMN STRAIGHT. WE SHOULD SEE IF THE"
	my_id.line2[0]="COMMIES LEFT US ANYTHING TO DRINK..."
	my_id.line1[1]="THIS HEAT IS KILLING ME!"
	my_id.line2[1]=""
	my_id.messages=1
	}
	if argument0=4 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I WOULDN'T MIND A DRINK MYSELF."
	my_id.line2[0]="..."
	my_id.line1[1]="WHEN DO YOU THINK THE COLONEL"
	my_id.line2[1]="WILL GET HERE?"
	my_id.line1[2]="I'M SURE HE'S GOT A BOTTLE OR TWO"
	my_id.line2[2]="STASHED AWAY SOMEWHERE."
	my_id.messages=2
	}
	if argument0=5 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="MIGHT BE A WHILE. THE ROADS AROUND"
	my_id.line2[0]="HERE ARE PRETTY ROUGH."
	my_id.line1[1]="WE SHOULD PROBABLY SETTLE FOR SOME"
	my_id.line2[1]="WATER FOR NOW, AND CATCH SOME SLEEP."
	my_id.line1[2]="I'LL FEEL A LOT SAFER HERE WHEN"
	my_id.line2[2]="D COMPANY ARRIVES."
	my_id.messages=2
	}
	if argument0=6 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="DIDN'T YOU HEAR? THOSE GUYS ARE"
	my_id.line2[0]="PUSSIES! WE'RE BETTER OFF WITHOUT 'EM."
	my_id.line1[1]="WE TOOK DOWN THIS PLACE ON"
	my_id.line2[1]="OUR OWN, DIDN'T WE?"
	my_id.line1[2]="WHAT DO WE NEED THEM FOR, HUH?"
	my_id.line2[2]=""
	my_id.messages=2
	}
	if argument0=7 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I GUESS YOU'RE RIGHT, BARNES. BUT"
	my_id.line2[0]="THERE'S ALWAYS SAFETY IN NUMBERS."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="I'M GONNA GO LIE DOWN FOR A WHILE."
	my_id.line2[2]="DIDN'T GET MUCH SLEEP LAST NIGHT."
	my_id.line1[3]="WAKE ME UP WHEN THE COLONEL"
	my_id.line2[3]="GETS HERE, OK?"
	my_id.messages=3
	}
	}

	if room=rmHotelOutside {
	if argument0=0 {
	my_id.sprite=sprFaceSoldier
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="OUTSTANDING WORK THERE, SOLDIER!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THANK YOU, SIR!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceSoldier
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I WISH MY MEN WERE AS WELL TRAINED"
	my_id.line2[0]="AND CAPABLE AS YOU."
	my_id.line1[1]="WE'VE BEEN TRYING TO SEIZE THIS ENEMY"
	my_id.line2[1]="CAMP FOR WEEKS."
	my_id.line1[2]="SUFFERED SOME HEAVY CASUALTIES."
	my_id.line2[2]="..."
	my_id.line1[3]="WELL, I'M GLAD WE CAN PUT THIS"
	my_id.line2[3]="ALL BEHIND US NOW."
	my_id.messages=3
	}
	if argument0=3 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YES, SIR!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFaceSoldier
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WHY DON'T YOU GO BACK, SET UP CAMP"
	my_id.line2[0]="AND GET YOURSELVES SOME REST."
	my_id.line1[1]="GOTTA GO ROUND UP MY MEN."
	my_id.line2[1]="MY COMPANY AND I WILL JOIN YOU LATER."
	my_id.messages=1
	}
	if argument0=5 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="UNDERSTOOD, SIR!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	}

	if room=rmOceanSide {
	if argument0=0 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I'VE BEEN THINKING"
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=1 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="OH YEAH?"
	my_id.line2[0]="THINKING ABOUT WHAT?"
	my_id.messages=0
	}
	if argument0=2 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WHEN I GET BACK HOME, I THINK"
	my_id.line2[0]="I WANT TO OPEN UP A BAR."
	my_id.messages=0
	}
	if argument0=3 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WELL, YOU DO LIKE DRINKING."
	my_id.line2[0]="..."
	my_id.messages=0
	}
	if argument0=4 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="HEY, I'M BEING SERIOUS."
	my_id.line2[0]="YOU THINK IT'S A BAD IDEA?"
	my_id.line1[1]="I USED TO WORK AS A BARTENDER."
	my_id.line2[1]="..."
	my_id.line1[2]="..."
	my_id.line2[2]=""
	my_id.line1[3]="WELL, WHAT ARE YOU GONNA DO WHEN"
	my_id.line2[3]="WE GET BACK HOME?"
	my_id.messages=3
	}
	if argument0=5 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I'M A TEACHER, REMEMBER?"
	my_id.line2[0]="I HAVE A JOB WHEN I GET BACK."
	my_id.line1[1]="I'M SURE YOU'D MAKE A GREAT"
	my_id.line2[1]="BAR OWNER THOUGH, BARNES."
	my_id.line1[2]="WHO WOULDN'T WANT TO HAVE A"
	my_id.line2[2]="SOCIOPATHIC DRUNK AS THEIR BOSS?"
	my_id.messages=2
	}
	if argument0=6 {
	my_id.sprite=sprFaceBlackSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YEAH, YEAH..."
	my_id.line2[0]="FUCK YOU TOO, DUDE."
	my_id.line1[1]="..."
	my_id.line2[1]=""
	my_id.line1[2]="HOW ABOUT YOU LIEUTENANT?"
	my_id.line2[2]="GOT ANY PLANS?"
	my_id.messages=2
	}
	if argument0=7 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="HMM, I'M NOT SURE."
	my_id.line2[0]="A BAR SOUNDS NICE."
	my_id.line1[1]="ANYTHING WHERE I WON'T HAVE TO"
	my_id.line2[1]="CARRY A GUN AND SHOOT PEOPLE."
	my_id.line1[2]="MAYBE I'LL FIND A LITTLE CONVENIENCE"
	my_id.line2[2]="STORE, OR SOMETHING."
	my_id.line1[3]="PUT A LITTLE TV NEXT TO THE REGISTER,"
	my_id.line2[3]="JUST SIT THERE ALL DAY, RELAXING."
	my_id.messages=3
	}
	if argument0=8 {
	my_id.sprite=sprFaceFatSquad
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="SOUNDS LIKE YOU'VE GOT IT ALL"
	my_id.line2[0]="PLANNED OUT."
	my_id.messages=0
	}
	if argument0=9 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="I TRY NOT TO THINK ABOUT IT TOO MUCH."
	my_id.line2[0]="..."
	my_id.line1[1]="THINGS NEVER TURN OUT THE WAY YOU"
	my_id.line2[1]="EXPECT THEM TO."
	my_id.line1[2]="..."
	my_id.line2[2]=""
	my_id.line1[3]="ANYWAY, I'M GONNA GO SEE WHAT'S KEEPING"
	my_id.line2[3]="THE COLONEL."
	my_id.line1[4]="WE WERE SUPPOSED TO MOVE OUT AT DAWN."
	my_id.line2[4]="THE SUN'S BEEN UP FOR AN HOUR NOW."
	my_id.messages=4
	}


	if argument0=10 {
	my_id.sprite=sprFaceGeneralDown
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="LIEUTENANT! I JUST RECEIVED SOME GOOD"
	my_id.line2[0]="NEWS. LOOKS LIKE I MIGHT BE PROMOTED."
	my_id.line1[1]="THEY'RE CONSIDERING ME FOR LIEUTENANT"
	my_id.line2[1]="GENERAL..."
	my_id.messages=1
	}
	if argument0=11 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YOU DON'T LOOK TOO HAPPY ABOUT IT, SIR."
	my_id.line2[0]="IS SOMETHING TROUBLING YOU?"
	my_id.messages=0
	}
	if argument0=12 {
	my_id.sprite=sprFaceGeneralDown
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="NAH, CAN'T YOU SEE I'M CELEBRATING?"
	my_id.line2[0]="..."
	my_id.line1[1]="WHY WOULDN'T I WANT TO BE LIEUTENANT"
	my_id.line2[1]="GENERAL?"
	my_id.line1[2]="WELL, BESIDES THE FACT THAT WE'RE GONNA"
	my_id.line2[2]="LOSE THIS WAR..."
	my_id.line1[3]="*SIGH*"
	my_id.line2[3]="..."
	my_id.line1[4]="ON A MORE POSITIVE NOTE, YOU AND THE"
	my_id.line2[4]="BOYS ARE BEING SENT BACK HOME SOON."
	my_id.line1[5]="UNFORTUNATELY WE'VE GOT ONE MORE"
	my_id.line2[5]="MISSION BEFORE THAT."
	my_id.messages=5
	}
	if argument0=13 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THE ONE YOU BRIEFED US ABOUT LAST"
	my_id.line2[0]="NIGHT, SIR?"
	my_id.messages=0
	}
	if argument0=14 {
	my_id.sprite=sprFaceGeneralDown
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="THAT'S THE ONE! CHARGING AN ENEMY"
	my_id.line2[0]="CAMP WITH JUST FOUR SOLDIERS."
	my_id.line1[1]="GOOD THING YOU'RE AN ELITE UNIT, HUH?"
	my_id.line2[1]="WHAT A PIECE OF SHIT MISSION."
	my_id.line1[2]="NOTHING GOOD ABOUT IT, SON!"
	my_id.line2[2]="YOU BOYS STAY FROSTY THIS TIME."
	my_id.line1[3]="DON'T GET YOURSELVES KILLED FOR"
	my_id.line2[3]="NOTHING, YOU HEAR?"
	my_id.messages=3
	}
	if argument0=15 {
	my_id.sprite=sprFaceNicke
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="YES, SIR!"
	my_id.line2[0]=""
	my_id.messages=0
	}
	if argument0=16 {
	my_id.sprite=sprFaceGeneralDown
	objEffector.sprite=my_id.sprite
	my_id.line1[0]="WELL, ALRIGHT THEN."
	my_id.line2[0]="GODSPEED!"
	my_id.messages=0
	}
	}



}
