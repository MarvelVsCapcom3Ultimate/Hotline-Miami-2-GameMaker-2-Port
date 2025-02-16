if life>0 {
life-=1 
gravity=random(0.25)
if round(random(4))=2 gravity_direction=270-20+random(40)
} else {
gravity=0
friction=0.25
if speed<=0 instance_destroy()
}
