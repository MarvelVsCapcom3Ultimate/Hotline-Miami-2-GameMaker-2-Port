box[0]=instance_create(room_width/2,room_height*0.44,objMidnightVHS)
i=1 
repeat (6) {
box[i]=instance_create(room_width/2+i*120,room_height*0.44,objVHSBox)
if i=1 box[i].sprite_index=sprAct1BoxLayers
if i=2 box[i].sprite_index=sprAct2BoxLayers
if i=3 box[i].sprite_index=sprAct3BoxLayers
if i=4 box[i].sprite_index=sprAct4BoxLayers
if i=5 box[i].sprite_index=sprAct5BoxLayers
if i=6 box[i].sprite_index=sprAct6BoxLayers
i+=1
}
box[7]=instance_create(room_width/2+i*120,room_height*0.44,objMidnightVHS)
i+=1
box[8]=instance_create(room_width/2+i*120,room_height*0.44,objMidnightVHS)

box[1].sprite=sprAct1CoverLayers
box[2].sprite=sprAct2CoverLayers
box[3].sprite=sprAct3CoverLayers
box[4].sprite=sprAct4CoverLayers
box[5].sprite=sprAct5CoverLayers
box[6].sprite=sprAct6CoverLayers
box[7].sprite_index=sprApocalypse
box[8].sprite_index=sprShelter
current=0

dir=random(1000)
statx=1
stat[0]="HIGHSCORE: "
stat[1]="BEST TIME: "
value[0,0]=string(round(random(90000)))
value[0,1]=string(round(random(500)))
value[1,0]=string(round(random(90000)))
value[1,1]=string(round(random(500)))
value[2,0]=string(round(random(90000)))
value[2,1]=string(round(random(500)))
value[3,0]=string(round(random(90000)))
value[3,1]=string(round(random(500)))
value[4,0]=string(round(random(90000)))
value[4,1]=string(round(random(500)))
value[5,0]=string(round(random(90000)))
value[5,1]=string(round(random(500)))
value[6,0]=string(round(random(90000)))
value[6,1]=string(round(random(500)))
value[7,0]=string(round(random(90000)))
value[7,1]=string(round(random(500)))
value[8,0]=string(round(random(90000)))
value[8,1]=string(round(random(500)))
value[9,0]=string(round(random(90000)))
value[9,1]=string(round(random(500)))
value[10,0]=string(round(random(90000)))
value[10,1]=string(round(random(500)))
value[11,0]=string(round(random(90000)))
value[11,1]=string(round(random(500)))
value[12,0]=string(round(random(90000)))
value[12,1]=string(round(random(500)))
value[13,0]=string(round(random(90000)))
value[13,1]=string(round(random(500)))
value[14,0]=string(round(random(90000)))
value[14,1]=string(round(random(500)))
value[15,0]=string(round(random(90000)))
value[15,1]=string(round(random(500)))
value[16,0]=string(round(random(90000)))
value[16,1]=string(round(random(500)))
value[17,0]=string(round(random(90000)))
value[17,1]=string(round(random(500)))
value[18,0]=string(round(random(90000)))
value[18,1]=string(round(random(500)))
value[19,0]=string(round(random(90000)))
value[19,1]=string(round(random(500)))
value[20,0]=string(round(random(90000)))
value[20,1]=string(round(random(500)))
value[21,0]=string(round(random(90000)))
value[21,1]=string(round(random(500)))
value[22,0]=string(round(random(90000)))
value[22,1]=string(round(random(500)))
value[23,0]=string(round(random(90000)))
value[23,1]=string(round(random(500)))
value[24,0]=string(round(random(90000)))
value[24,1]=string(round(random(500)))
value[25,0]=string(round(random(90000)))
value[25,1]=string(round(random(500)))
value[26,0]=string(round(random(90000)))
value[26,1]=string(round(random(500)))


fuchsia=make_color_rgb(255,0,128)
aqua=make_color_rgb(0,255,210)
addx1=0
addx2=0
myx=0
drawpart=1

parttitle[0]="MIDNIGHT ANIMAL"
parttitle[1]="EXPOSITION"
parttitle[2]="RISING"
parttitle[3]="CLIMAX"
parttitle[4]="FALLING"
parttitle[5]="INTERMISSION"
parttitle[6]="CATASTROPHE"
parttitle[7]="APOCALYPSE"
parttitle[8]="THE ABYSS"

partsubtitle[0]="Pilot"
partsubtitle[1]="Act One"
partsubtitle[2]="Act Two"
partsubtitle[3]="Act Three"
partsubtitle[4]="Act Four"
partsubtitle[5]="Act Five"
partsubtitle[6]="Act Six"
partsubtitle[7]="Feature Film"
partsubtitle[8]="Bonus Content"

leveltitle[0,0]="MIDNIGHT ANIMAL"
leveltitle[1,0]="DOWN UNDER"
leveltitle[1,1]="HOMICIDE"
leveltitle[1,2]="HARD NEWS"
leveltitle[1,3]="FINAL CUT"
leveltitle[2,0]="FIRST TRIAL"
leveltitle[2,1]="MOVING UP"
leveltitle[2,2]="NO MERCY"
leveltitle[2,3]="EXECUTION"
leveltitle[3,0]="AMBUSH"
leveltitle[3,1]="INTO THE PIT"
leveltitle[3,2]="DEAD AHEAD"
leveltitle[3,3]="DEATH WISH"//"DEATHWISH"
leveltitle[4,0]="SUBWAY"
leveltitle[4,1]="STRONGHOLD"
leveltitle[4,2]="WITHDRAWAL"
leveltitle[4,3]="CASUALTIES"
leveltitle[5,0]="FIRST BLOOD"
leveltitle[5,1]="DEMOLITION"
leveltitle[5,2]="HOUSE CALL"
leveltitle[5,3]="UNAVAILABLE"//Prison "ESCAPE"
leveltitle[6,0]="SEIZURE"
leveltitle[6,1]="BLOOD MONEY"//Bank
leveltitle[6,2]="CAUGHT"//Police "NIGHTMARE"
leveltitle[6,3]="TAKE OVER"//Colombian "TAKE OVER"
leveltitle[7,0]="APOCALYPSE"
leveltitle[8,0]="THE ABYSS"

levelsubtitle[0,0]="Pilot"
levelsubtitle[1,0]="1st Scene"
levelsubtitle[1,1]="2nd Scene"
levelsubtitle[1,2]="3rd Scene"
levelsubtitle[1,3]="4th Scene"
levelsubtitle[2,0]="5th Scene"
levelsubtitle[2,1]="6th Scene"
levelsubtitle[2,2]="7th Scene"
levelsubtitle[2,3]="8th Scene"
levelsubtitle[3,0]="9th Scene"
levelsubtitle[3,1]="10th Scene"
levelsubtitle[3,2]="11th Scene"
levelsubtitle[3,3]="12th Scene"
levelsubtitle[4,0]="13th Scene"
levelsubtitle[4,1]="14th Scene"
levelsubtitle[4,2]="15th Scene"
levelsubtitle[4,3]="16th Scene"
levelsubtitle[5,0]="17th Scene"
levelsubtitle[5,1]="18th Scene"
levelsubtitle[5,2]="19th Scene"
levelsubtitle[5,3]="20th Scene"
levelsubtitle[6,0]="21st Scene"
levelsubtitle[6,1]="22nd Scene"
levelsubtitle[6,2]="23rd Scene"
levelsubtitle[6,3]="24th Scene"
levelsubtitle[7,0]="Feature Film"
levelsubtitle[8,0]="Bonus Content"


change=0
titlex=0
title=0

surf=surface_create(room_width,room_height)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()

level=0
removex=0

song[0,0]="Sean Evans - Detection"
song[1,0]="Jasper Byrne - Voyager"
song[1,1]="Perturbator - Technoir"
song[1,2]="Magna - Divide"
song[1,3]="Jasper Byrne - Decade Dance"
song[2,0]="Vestron Vulture - New Wave Hookers"
song[2,1]="Magic Sword - In the Face of Evil"
song[2,2]="Scattle - Pursuit"
song[2,3]="Perturbator - Sexualizer"
song[3,0]="M|O|O|N - Delay"
song[3,1]="Life Companions - Untitled"
song[3,2]="Scattle - Bloodline"
song[3,3]="Carpenter Brut - Roller Mobster"
song[4,0]="IAmTheKidYouKnowWhatIMean - Run"
song[4,1]="M|O|O|N - Quixotic"
song[4,2]="Sean Evans - Miami Theme"
song[4,3]="Magic Sword - The Way Home"
song[5,0]="?? - ??"
song[5,1]="Mega Drive - N.A.R.C."
song[5,2]="Cinimod - Rumble"
song[5,3]="Carpenter Brut - Le Perv"
song[6,0]="EL TIGR3 - She Swallowed Burning Coals"
song[6,1]="Mega Drive - Acid Spit"
song[6,2]="?? - ??"
song[6,3]="Mega Drive - Slum Lord"
song[7,0]="Light Club - Fahkeet"
song[8,0]="?? - ??"


pickintro[0]="YES"
pickintro[1]="NO"
intro=1

amount=0
fade=0
