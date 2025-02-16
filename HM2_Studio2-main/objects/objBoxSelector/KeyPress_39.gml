if level=0 {
if current<8 current+=1 else current=0
i=0 
repeat (7) {
box[i].active=0
i+=1
}
box[current].select=0
change=1
}

if level=2 {
if intro=0 intro=1 else intro=0
}
