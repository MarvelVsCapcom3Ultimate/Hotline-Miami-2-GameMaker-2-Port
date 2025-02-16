box[current].active=1
if level=0 {
level=1
change=1
}
grade=choose("A","B","C","D")+choose("+","-","")
if box[current].level=2 and box[current].index2>=4 {
if leveltitle[current,box[current].select]="UNAVAILABLE" exit
box[current].level=3 
change=1 
fade=1 
objFader.fade=1 
if current=0 scrStartLevel(0,intro) 
if current>0 and current<8 scrStartLevel((current-1)*4+1+box[current].select,intro)
if current=8 scrStartLevel(26,intro)
}
