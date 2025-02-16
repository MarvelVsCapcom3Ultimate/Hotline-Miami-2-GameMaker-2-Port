currentsong=global.mysong

song[0]="VOYAGER"
song[1]="TECHNOIR"
song[2]="DIVIDE"
song[3]="DECADE DANCE"
song[4]="NEW WAVE HOOKERS"
song[5]="IN THE FACE OF EVIL"
song[6]="REMORSE"
song[7]="SEXUALIZER"
song[8]="DELAY"
song[9]="UNTITLED"
song[10]="THE PURSUIT"
song[11]="ROLLER MOBSTER"
song[12]="QUIXOTIC"
song[13]="HOTLINE THEME"
song[14]="THE WAY HOME"
song[15]="LE PERV"
song[16]="BURNING COAL"
song[17]="ACID SPIT"
song[18]="NARC"
song[19]="FAHKEET"
song[20]="DETECTION"
songs=20


option[0]="THE FANS"
option[1]="THE DETECTIVE"
option[2]="THE WRITER"
option[3]="THE SOLDIER"
option[4]="THE SON"
option[5]="THE RAT"
option[6]="THE COBRA"
option[7]="THE BUTCHER"
option[8]="THE HENCHMAN"
players=9

enemies[0]="MAFIA"
enemies[1]="GANG"
enemies[2]="COLOMBIANS"
enemies[3]="POLICE"
enemies[4]="SOLDIERS"
enemies[5]="GUARDS"


select=global.player

i=0
repeat (6) {
available[i]=0
global.availabl=0
i+=1
}

scrEnemiesAvailable(select)

choice[0]="OK"
choice[1]="CANCEL"

player[0]=sprZebraWalkUnarmed
player[1]=sprCopWalkUnarmed
player[2]=sprWriterWalkUnarmed
player[3]=sprNickeWalkUnarmed
player[4]=sprSonWalkUnarmed
player[5]=sprRatWalkUnarmed
player[6]=sprCobraWalkUnarmed
player[7]=sprPigWalkHammer
player[8]=sprHenchmanWalkUnarmed

bselect=-1

write=0
keyboard_string=""
levelname=global.levelname

width=512
height=256

index=0

dir=0

blink=1

wait=1

windowopen=0
songselect=-1
startpos=0
